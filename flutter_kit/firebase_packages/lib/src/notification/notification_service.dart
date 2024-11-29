import 'dart:convert';

import 'package:core/core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../firebase_packages.dart';

final newNotificationOpenProvider = StateProvider<LougaRemoteNotification?>((ref) => null);

abstract class NotificationService {
  NotificationService._();

  static final _messaging = FirebaseMessaging.instance;
  static final _localNotifications = FlutterLocalNotificationsPlugin();
  static const _androidNotificationChannel = AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notifications.',
    importance: Importance.max,
  );

  static Future<String?> getToken() async {
    try {
      final token = await _messaging.getToken();
      Logger.d('FCM token: $token');
      return token;
    } catch (e) {
      Logger.e('Failed to get FCM token: $e');
      return null;
    }
  }

  static Stream<String> onTokenRefresh() {
    return FirebaseMessaging.instance.onTokenRefresh;
  }

  static Future<void> initialize() async {
    _localNotifications.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('ic_notification'),
        iOS: DarwinInitializationSettings(),
      ),

      /// You can use the following code to handle when a local notification is opened
      // onDidReceiveNotificationResponse: (response) {
      //   final payload = response.payload;
      //   Logger.d('onSelectNotification, payload: $payload');
      //   if (payload != null) {
      //     final data = jsonDecode(payload);
      //     if (data is Map<String, dynamic>) {
      //       _onMessageOpenedApp(RemoteMessage(data: data));
      //     }
      //   }
      // },
      // onDidReceiveBackgroundNotificationResponse: (response) {
      //   Logger.d('onSelectNotification, payload: ${response.payload}');
      //   if (response.payload != null) {
      //     final data = jsonDecode(response.payload!);
      //     if (data is Map<String, dynamic>) {
      //       _onMessageOpenedApp(RemoteMessage(data: data));
      //     }
      //   }
      // },
    );

    FirebaseMessaging.onMessage.listen(_onForegroundMessage);
    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);

    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  static Future<void> _onForegroundMessage(RemoteMessage message) async {
    Logger.d('_onForegroundMessage, data: ${message.data}');

    final notification = message.notification;
    final android = message.notification?.android;
    if (notification != null && android != null) {
      final imageUrl = android.imageUrl;
      ByteArrayAndroidBitmap? androidBitmap;
      if (imageUrl != null) {
        androidBitmap = ByteArrayAndroidBitmap.fromBase64String(await _base64encodedImage(imageUrl));
      }

      final sound = android.sound;
      final channelId = android.channelId;

      _localNotifications.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channelId ?? _androidNotificationChannel.id,
            channelId ?? _androidNotificationChannel.name,
            icon: 'ic_notification',
            styleInformation:
                androidBitmap != null ? BigPictureStyleInformation(androidBitmap, hideExpandedLargeIcon: true) : null,
            sound:
                sound != null && sound != 'default' ? RawResourceAndroidNotificationSound(sound.split(".")[0]) : null,
          ),
        ),
        payload: jsonEncode(message.data),
      );
    }

    if (message.notification != null) {
      Logger.d(
        'Message also contained a notification:\n'
        'title: ${message.notification?.title}\n'
        'body: ${message.notification?.body}\n'
        'channelId: ${message.notification?.android?.channelId}\n'
        'clickAction: ${message.notification?.android?.clickAction}\n'
        'imageUrl: ${message.notification?.android?.imageUrl}\n'
        'sound: ${message.notification?.android?.sound}\n'
        'link: ${message.notification?.android?.link}\n'
        'smallIcon: ${message.notification?.android?.smallIcon}\n'
        'ticker: ${message.notification?.android?.ticker}\n',
      );
    }
  }

  static Future<void> listenToOnNotificationOpened(WidgetRef ref) async {
    const platformChannel = MethodChannel('louga.notifications');
    platformChannel.setMethodCallHandler((call) async {
      final arguments = call.arguments;
      if (call.method == 'onNotificationOpened' && arguments is Map<dynamic, dynamic>) {
        final data = arguments.map<String, dynamic>((key, value) => MapEntry(key.toString(), value));
        _onMessageOpenedApp(RemoteMessage.fromMap(data), ref);
      }
    });

    // Get any messages which caused the application to open from a terminated state.
    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      _onMessageOpenedApp(initialMessage, ref);
    }

    FirebaseMessaging.onMessageOpenedApp.listen((data) {
      _onMessageOpenedApp(data, ref);
    });
  }

  static void _onMessageOpenedApp(RemoteMessage message, WidgetRef ref) {
    ref.read(newNotificationOpenProvider.notifier).state = LougaRemoteNotification.fromMap(message.data);
  }

  static Future<String> _base64encodedImage(String url) async {
    return base64Encode((await http.get(Uri.parse(url))).bodyBytes);
  }
}

@pragma('vm:entry-point')
Future<void> _backgroundHandler(RemoteMessage message) async {
  Logger.d('onBackgroundMessage, data: ${message.data}');
}

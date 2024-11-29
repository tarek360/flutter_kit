import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_kit_interface/ui_kit_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  const WebView(this.url, {super.key});

  final String url;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    if (_isWebViewWidgetSupported) {
      controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.disabled)
        ..setBackgroundColor(const Color(0xfff7f9fc))
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              // Update loading bar.
              debugPrint('WebView progress: $progress');
            },
          ),
        )
        ..loadRequest(Uri.parse(widget.url));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isWebViewWidgetSupported) {
      return WebViewWidget(controller: controller);
    } else {
      return const Center(child: FrogText.labelMedium('WebView is not supported on this platform.'));
    }
  }

  bool get _isWebViewWidgetSupported {
    return defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android;
  }
}

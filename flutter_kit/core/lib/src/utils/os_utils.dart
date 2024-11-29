import 'package:flutter/foundation.dart';

bool get isNotMobileOS =>
    defaultTargetPlatform != TargetPlatform.android && defaultTargetPlatform != TargetPlatform.iOS;

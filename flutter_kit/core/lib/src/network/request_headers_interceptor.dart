import 'dart:convert';

import 'package:core/core.dart';

class RequestHeadersInterceptor extends HeaderInterceptor {
  final RequestHeaders _requestHeaders;

  RequestHeadersInterceptor(
    this._requestHeaders,
  );

  @override
  void onHeaderRequest(RequestOptions options) {
    options.headers.addAll(_requestHeaders.headers);
  }
}

class RequestHeaders {
  final AppSharedPreferences _appSharedPreferences;
  final PackageInfoService _packageInfoService;
  final String deviceLocale;
  final String appLocale;

  RequestHeaders(
    this._appSharedPreferences,
    this._packageInfoService, {
    required this.deviceLocale,
    required this.appLocale,
  });

  Map<String, dynamic> get headers {
    final userToken = _appSharedPreferences.getUserToken();
    return {
      'Accept': 'application/json',
      'app-info': jsonEncode(
        _packageInfoService.getAppInfoEntity(
          deviceLocale: deviceLocale,
          appLocale: appLocale,
        ),
      ),
      if (userToken != null) 'Authorization': 'Bearer $userToken',
    };
  }
}

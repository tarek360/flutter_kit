import 'dart:io';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class FileCacheManager {
  FileCacheManager(this.getHeaders);

  final Map<String, String> Function() getHeaders;

  Future<File> getSingleFile(String url) async {
    return DefaultCacheManager().getSingleFile(url, headers: getHeaders());
  }
}

import 'package:core/core.dart';
import 'package:meta/meta.dart';

typedef IsMounted = bool Function();
typedef DataFunction<T> = void Function(T);

typedef ErrorFunction = void Function(ResultErrorType);

typedef GetCache<T> = T Function();
typedef GetUpdate<T> = Future<T> Function();

class GetCacheThenUpdate<T, U extends Result<T, ResultErrorType>> {
  GetCacheThenUpdate({required this.getCache, required this.getUpdate});

  final GetCache<T> getCache;
  final GetUpdate<U> getUpdate;

  /// [data] and [error] functions will be called asynchronously,
  /// pass the [isMounted] function and let returns false if you
  /// don't want [data] and [error] functions to be called anymore.
  Future<void> get<R>({
    required DataFunction<R> data,
    required ErrorFunction error,
    IsMounted? isMounted,
  }) async {
    final cache = getCache();

    bool mounted() => isMounted?.call() ?? true;

    if (cache != null && mounted()) {
      data(cache as R);

      if (cache is Cacheable) {
        Logger.d('CacheKey: "${cache.cacheKey}" – A value is returned!');
      }
    }

    if (cache is! Cacheable || cache.shouldGetNewUpdate) {
      if (cache is Cacheable) {
        Logger.d('CacheKey: "${cache.cacheKey}" – Expired! (Getting a new update..)');
      }
      (await getUpdate()).when(
        success: (t) {
          if (mounted()) {
            data(t as R);
          }
        },
        failure: (err) {
          if (mounted()) {
            error(err);
          }
        },
      );
    } else {
      Logger.d('CacheKey: "${cache.cacheKey}" – Still fresh (won\'t get a new update)');
    }
  }
}

final _cache = AppSharedPreferences();

mixin class Cacheable {
  @mustBeOverridden
  String get cacheKey => '';

  String get _dateKey => '${cacheKey}_date';

  DateTime? getCacheDate() {
    final date = _cache.getInt(_dateKey);

    if (date != null) {
      return DateTime.fromMillisecondsSinceEpoch(date);
    }
    return null;
  }

  Duration getMaxLifetime() => const Duration(hours: 20);

  Duration getMinLifetime() => const Duration(hours: 12);

  bool get shouldGetNewUpdate {
    final cacheDate = getCacheDate();
    if (cacheDate != null) {
      final wasAfterMidnightAndBeforeTheSunRise = cacheDate.hour < 5;
      final duration = wasAfterMidnightAndBeforeTheSunRise ? getMinLifetime() : getMaxLifetime();
      if (cacheDate.add(duration).isBefore(DateTime.now())) {
        return true;
      }
    }
    return false;
  }

  void cache() {
    _cache.setInt(_dateKey, DateTime.now().toUtc().millisecondsSinceEpoch);
    _cache.setObject(cacheKey, this);
  }

  static T? fromCache<T>(String key, T Function(Map<String, dynamic>) fromJson) {
    try {
      return _cache.getObject(key, fromJson);
    } catch (e, s) {
      Logger.e('Failed to get from cache: $e', stackTrace: s);
      return null;
    }
  }

  static void clear(String key) {
    _cache.clearObject(key);
  }
}

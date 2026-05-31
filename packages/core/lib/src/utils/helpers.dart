T guard<T>(T Function() func, {required T fallback}) {
  try {
    return func();
  } catch (err) {
    return fallback;
  }
}


Future<T> guardAsync<T>(Future<T> Function() func, {required T fallback}) async {
  try {
    return await func();
  } catch (err) {
    return fallback;
  }
}
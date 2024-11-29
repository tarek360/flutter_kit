import 'dart:async';

class Debouncer {
  final Duration delay;
  Timer? _timer;

  Debouncer({this.delay = const Duration(seconds: 1)});

  void call(void Function() action) {
    if (_timer?.isActive ?? false) _timer?.cancel();

    _timer = Timer(delay, action);
  }

  void dispose() {
    _timer?.cancel();
  }
}

import 'package:flutter/widgets.dart';

extension NavigatorExtension on NavigatorState {
  void popTwice() {
    pop();
    pop();
  }
}

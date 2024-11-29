import 'package:core/core.dart';

import 'model.dart';

abstract class LogoutRepository {
  Future<Result<LogoutResponse, ResultErrorType>> logout();
}

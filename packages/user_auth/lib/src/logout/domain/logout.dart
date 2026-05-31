import 'package:core/core.dart';

import 'logout_repository.dart';
import 'model.dart';

class Logout {
  final LogoutRepository _repository;

  const Logout(this._repository);

  Future<Result<LogoutResponse, ResultErrorType>> call() async {
    final result = await _repository.logout();

    return result.when(
      success: (data) => Result.success(data),
      failure: (error) => Result.failure(error),
    );
  }
}

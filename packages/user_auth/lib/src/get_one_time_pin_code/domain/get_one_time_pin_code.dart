import 'package:core/core.dart';

import 'get_one_time_pin_code_repository.dart';
import 'model.dart';

class GetOneTimePinCode {
  final GetOneTimePinCodeRepository _repository;

  const GetOneTimePinCode(
    this._repository,
  );

  Future<Result<GetOneTimePinCodeResponse, ResultErrorType>> call(GetOneTimePinCodeRequest requestInfo) async {
    return _getOneTimePinCode(requestInfo);
  }

  /// Check if the user exists on the server
  /// If the user exists, then get the one time pin code
  /// If the user does not exist, then return a response with no user
  Future<Result<GetOneTimePinCodeResponse, ResultErrorType>> _checkIfUserExistsAndGetOneTimePinCode(
    GetOneTimePinCodeRequest requestInfo,
  ) async {
    final isUserExistsResult = await _repository.isUserExists(requestInfo.email);
    return isUserExistsResult.when(
      success: (isUserExists) {
        if (isUserExists) {
          return _getOneTimePinCode(requestInfo);
        } else {
          final data = GetOneTimePinCodeResponse.noUser(userEmail: requestInfo.email);
          _repository.cacheGetOneTimePinCodeResponse(data);
          return Result.success(data);
        }
      },
      failure: (error) => Result.failure(error),
    );
  }

  Future<Result<GetOneTimePinCodeResponse, ResultErrorType>> _getOneTimePinCode(GetOneTimePinCodeRequest user) async {
    final result = await _repository.getOneTimePinCode(user);
    return result.when(
      success: (data) {
        _repository.cacheGetOneTimePinCodeResponse(data);
        return Result.success(data);
      },
      failure: (error) => Result.failure(error),
    );
  }
}

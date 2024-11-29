import 'package:core/core.dart';

import '../../get_one_time_pin_code/domain/clear_one_time_pin_code_cache.dart';
import '../../get_one_time_pin_code/domain/get_cached_one_time_pin_code.dart';
import '../../login/data/entity.dart';
import '../../refresh_token/domain/refresh_token_repository.dart';
import 'login_repository.dart';
import 'model.dart';

class Login {
  final LoginRepository _repository;
  final RefreshTokenRepository _refreshTokenRepository;
  final GetCachedOneTimePinCodeInfo _getCachedOneTimePinCode;
  final ClearOneTimePinCodeCache _clearOneTimePinCodeCache;

  const Login(
    this._repository,
    this._refreshTokenRepository,
    this._getCachedOneTimePinCode,
    this._clearOneTimePinCodeCache,
  );

  Future<LoginResponse> call(int pinCode) async {
    final pinCodeId = _getCachedOneTimePinCode.call()?.id;
    if (pinCodeId == null) {
      return const LoginResponse.otherError(ResultErrorType.other);
    }

    final result = await _repository.login(
      LoginRequest(
        pinCode: pinCode,
        pinID: pinCodeId,
      ),
    );
    return result.when(
      success: (token) async {
        _clearOneTimePinCodeCache();
        await _refreshTokenRepository.saveToken(token);

        return LoginResponse.success(token: token);
      },
      failure: (error) {
        final errorCode = error.extra;
        if (errorCode == null) {
          return LoginResponse.otherError(error.resultErrorType);
        }

        switch (errorCode) {
          case LoginResponseErrorCode.invalidCode:
            return const LoginResponse.invalidCode();
          case LoginResponseErrorCode.expiredCode:
            return const LoginResponse.expiredCode();
        }
      },
    );
  }
}

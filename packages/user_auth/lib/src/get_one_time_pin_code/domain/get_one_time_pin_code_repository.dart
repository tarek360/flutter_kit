import 'package:core/core.dart';

import 'model.dart';

abstract class GetOneTimePinCodeRepository {
  Future<Result<GetOneTimePinCodeResponse, ResultErrorType>> getOneTimePinCode(GetOneTimePinCodeRequest user);

  Future<Result<bool, ResultErrorType>> isUserExists(String email);

  GetOneTimePinCodeResponse? getCachedOneTimePinCode();

  void cacheGetOneTimePinCodeResponse(GetOneTimePinCodeResponse value);

  void clearOneTimePinCodeResponseCache();
}

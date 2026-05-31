import 'get_one_time_pin_code_repository.dart';
import 'model.dart';

class GetCachedOneTimePinCodeInfo {
  final GetOneTimePinCodeRepository _repository;

  const GetCachedOneTimePinCodeInfo(this._repository);

  GetOneTimePinCodeResponseOk? call() => _repository.getCachedOneTimePinCode()?.mapOrNull(ok: (data) => data);
}

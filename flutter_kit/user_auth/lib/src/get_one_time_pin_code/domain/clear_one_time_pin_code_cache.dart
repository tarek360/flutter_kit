import 'get_one_time_pin_code_repository.dart';

class ClearOneTimePinCodeCache {
  final GetOneTimePinCodeRepository _repository;

  const ClearOneTimePinCodeCache(this._repository);

  void call() {
    _repository.clearOneTimePinCodeResponseCache();
  }
}

import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class GetOneTimePinCodeRequest with _$GetOneTimePinCodeRequest {
  const factory GetOneTimePinCodeRequest({
    required String email,
  }) = _GetOneTimePinCodeRequest;

  const GetOneTimePinCodeRequest._();
}

@freezed
class GetOneTimePinCodeResponse with _$GetOneTimePinCodeResponse, Cacheable {
  const factory GetOneTimePinCodeResponse.ok({
    required String id,
    required int numberOfDigits,
    required String userEmail,
  }) = GetOneTimePinCodeResponseOk;

  const factory GetOneTimePinCodeResponse.blocked({
    required String userEmail,
  }) = GetOneTimePinCodeResponseBlocked;

  const factory GetOneTimePinCodeResponse.noUser({
    required String userEmail,
  }) = GetOneTimePinCodeResponseNoUser;

  const GetOneTimePinCodeResponse._();

  factory GetOneTimePinCodeResponse.fromJson(Map<String, dynamic> json) => _$GetOneTimePinCodeResponseFromJson(json);

  static const _key = 'GetOneTimePinCodeResponseOk';

  static GetOneTimePinCodeResponse? fromCache() => Cacheable.fromCache(_key, GetOneTimePinCodeResponse.fromJson);

  static void clearCache() => Cacheable.clear(_key);

  static bool isPinCodeSent() => fromCache()?.maybeMap(ok: (_) => true, orElse: () => false) ?? false;

  @override
  String get cacheKey => _key;
}

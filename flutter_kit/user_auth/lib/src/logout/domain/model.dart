import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class LogoutResponse with _$LogoutResponse {
  const factory LogoutResponse({
    required bool success,
  }) = _LogoutResponse;

  const LogoutResponse._();
}

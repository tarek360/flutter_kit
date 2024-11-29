import 'package:core/core.dart';

abstract class RefreshTokenRepository {
  Future<Result<String, ResultErrorType>> getRefreshedToken();

  String? get userToken;

  int? get lastRefreshTokenTime;

  Future<void> saveToken(String token);
}

import 'package:core/core.dart';

import '../domain/refresh_token_repository.dart';
import 'entity.dart';

class RefreshTokenRepositoryImpl implements RefreshTokenRepository {
  final NetworkService _network;
  final AppSharedPreferences _appSharedPreferences;

  const RefreshTokenRepositoryImpl(
    this._network,
    this._appSharedPreferences,
  );

  @override
  String? get userToken => _appSharedPreferences.getUserToken();

  @override
  int? get lastRefreshTokenTime => _appSharedPreferences.getLastRefreshTokenTime();

  @override
  Future<Result<String, ResultErrorType>> getRefreshedToken() async {
    final NetworkResponse<MessageOut<RefreshTokenResponseEntity>> response = await _network.request(
      request: NetworkRequest.get(
        endpoint: '/v1/user/auth/refresh-token',
      ),
      fromJson: MessageOut(dataFromJson: RefreshTokenResponseEntity.fromJson).singleFromJson,
    );

    return response.when(
      success: (data) {
        if (data.item.token != null) {
          return Result.success(data.item.token!);
        }
        return const Result.failure(ResultErrorType.parsing);
      },
      failure: (error) => Result.failure(error.toResultErrorType()),
    );
  }

  @override
  Future<void> saveToken(String token) async {
    await _appSharedPreferences.setUserToken(token);
    _appSharedPreferences.setLastRefreshTokenTime(DateTime.now().millisecondsSinceEpoch);
  }
}

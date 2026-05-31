import 'package:core/core.dart';

import '../domain/logout_repository.dart';
import '../domain/model.dart';
import 'entity.dart';
import 'logout_mapper.dart';

class LogoutRepositoryImpl implements LogoutRepository {
  final NetworkService _network;
  final LogoutMapper _mapper;
  final AppSharedPreferences _sharedPreferences;

  const LogoutRepositoryImpl(
    this._network,
    this._mapper,
    this._sharedPreferences,
  );

  @override
  Future<Result<LogoutResponse, ResultErrorType>> logout() async {
    final request = NetworkRequest.post(endpoint: '/v1/user/logout');

    final userToken = _sharedPreferences.getUserToken();
    _sharedPreferences.cleanUserToken();
    if (userToken != null) {
      request.addHeader('Authorization', 'Bearer $userToken');
    }

    final NetworkResponse<LogoutResponseEntity> response = await _network.request(
      request: request,
      fromJson: LogoutResponseEntity.fromJson,
    );

    return response.when(
      success: (data) {
        final mappedData = _mapper.transformToLogoutResponseModel(data);
        if (mappedData != null) {
          return Result.success(mappedData);
        } else {
          return const Result.failure(ResultErrorType.parsing);
        }
      },
      failure: (error) => Result.failure(error.toResultErrorType()),
    );
  }
}

import 'package:core/core.dart';

import '../domain/get_one_time_pin_code_repository.dart';
import '../domain/model.dart';
import 'entity.dart';
import 'get_one_time_pin_code_mapper.dart';

class GetOneTimePinCodeRepositoryImpl implements GetOneTimePinCodeRepository {
  final NetworkService _network;
  final GetOneTimePinCodeMapper _mapper;

  const GetOneTimePinCodeRepositoryImpl(
    this._network,
    this._mapper,
  );

  @override
  Future<Result<GetOneTimePinCodeResponse, ResultErrorType>> getOneTimePinCode(
    GetOneTimePinCodeRequest requestInfo,
  ) async {
    final NetworkResponse<MessageOut<GetOneTimePinCodeResponseEntity>> response = await _network.request(
      request: NetworkRequest.post(
        endpoint: '/v1/user/pin',
        body: _mapper.transformToGetOneTimePinCodeRequestEntity(requestInfo).toJson(),
      ),
      fromJson: MessageOut(dataFromJson: GetOneTimePinCodeResponseEntity.fromJson).singleFromJson,
    );

    return response.when(
      success: (data) {
        final mappedData = _mapper.transformToGetOneTimePinCodeResponseModel(data.item, requestInfo);
        if (mappedData != null) {
          return Result.success(mappedData);
        } else {
          return const Result.failure(ResultErrorType.parsing);
        }
      },
      failure: (error) => Result.failure(error.toResultErrorType()),
    );
  }

  @override
  Future<Result<bool, ResultErrorType>> isUserExists(String email) async {
    final NetworkResponse<bool> response = await _network.request(
      request: NetworkRequest.get(
        endpoint: '/v1/user/exists',
      )..addQueryParameter('email', email),
      fromJson: (json) => json['Data'] as bool,
    );

    return response.when(
      success: (data) {
        return Result.success(data);
      },
      failure: (error) {
        return Result.failure(error.toResultErrorType());
      },
    );
  }

  @override
  GetOneTimePinCodeResponse? getCachedOneTimePinCode() {
    return GetOneTimePinCodeResponse.fromCache();
  }

  @override
  void cacheGetOneTimePinCodeResponse(GetOneTimePinCodeResponse value) => value.cache();

  @override
  void clearOneTimePinCodeResponseCache() => GetOneTimePinCodeResponse.clearCache();
}

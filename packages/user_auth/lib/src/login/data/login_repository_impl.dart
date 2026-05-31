import 'package:core/core.dart';
import '../domain/login_repository.dart';
import '../domain/model.dart';
import 'entity.dart';
import 'login_mapper.dart';

// final loginRepositoryProvider = Provider(
//       (ref) => LoginRepositoryImpl(
//     ref.watch(networkServiceProvider),
//     ref.watch(loginMapperProvider),
//   ),
// );

class LoginRepositoryImpl implements LoginRepository {
  final NetworkService _network;
  final LoginMapper _mapper;

  const LoginRepositoryImpl(
    this._network,
    this._mapper,
  );

  @override
  Future<Result<String, ErrorMessage<LoginResponseErrorCode>>> login(LoginRequest loginRequest) async {
    final NetworkResponse<MessageOut<LoginResponseEntity>> response = await _network.request(
      request: NetworkRequest.post(
        endpoint: '/v1/user/login',
        body: MessageIn.of(_mapper.transformToLoginRequestEntity(loginRequest).toJson()),
      ),
      fromJson: MessageOut(dataFromJson: LoginResponseEntity.fromJson).singleFromJson,
    );

    return response.when(
      success: (data) {
        final token = data.item.token;
        if (token == null) {
          return const Result.failure(ErrorMessage(resultErrorType: ResultErrorType.parsing));
        }
        return Result.success(token);
      },
      failure: (error) {
        final errorMessage = MessageOutError.fromJson(response.rawData);

        if (errorMessage != null) {
          final errorCode = LoginResponseErrorCode.valueOf(errorMessage.code) ?? LoginResponseErrorCode.invalidCode;
          return Result.failure(ErrorMessage(extra: errorCode, resultErrorType: ResultErrorType.other));
        }

        return Result.failure(ErrorMessage(resultErrorType: error.toResultErrorType()));
      },
    );
  }
}

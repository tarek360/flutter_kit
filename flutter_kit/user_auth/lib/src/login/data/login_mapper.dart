import '../domain/model.dart';
import 'entity.dart';

class LoginMapper {
  LoginRequestEntity transformToLoginRequestEntity(LoginRequest input) {
    return LoginRequestEntity(
      pinCode: input.pinCode,
      pinID: input.pinID,
    );
  }
}

import '../domain/model.dart';
import 'entity.dart';

class LogoutMapper {
  LogoutResponse? transformToLogoutResponseModel(LogoutResponseEntity? input) {
    if (input == null) {
      return null;
    }
    final success = input.success;

    if (success == null) {
      return null;
    }

    return LogoutResponse(
      success: success,
    );
  }
}

import 'package:core/core.dart';

import '../data/entity.dart';
import 'model.dart';

abstract class LoginRepository {
  Future<Result<String, ErrorMessage<LoginResponseErrorCode>>> login(LoginRequest request);
}

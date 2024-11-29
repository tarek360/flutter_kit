import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/model.dart';
import 'entity.dart';

final getOneTimePinCodeMapperProvider = Provider(
      (ref) => GetOneTimePinCodeMapper(),
);

class GetOneTimePinCodeMapper {
  GetOneTimePinCodeRequestEntity transformToGetOneTimePinCodeRequestEntity(GetOneTimePinCodeRequest input) {
    return GetOneTimePinCodeRequestEntity(
      email: input.email,
    );
  }

  GetOneTimePinCodeResponse? transformToGetOneTimePinCodeResponseModel(
    GetOneTimePinCodeResponseEntity? input,
    GetOneTimePinCodeRequest requestInfo,
  ) {
    if (input == null) {
      return null;
    }
    final id = input.id;
    final numberOfDigits = input.numberOfDigits ?? 4;
    final error = input.error;

    if (error != null) {
      return GetOneTimePinCodeResponse.blocked(
        userEmail: requestInfo.email,
      );
    }

    if (id == null) {
      return null;
    }

    return GetOneTimePinCodeResponse.ok(
      id: id,
      numberOfDigits: numberOfDigits,
      userEmail: requestInfo.email,
    );
  }
}

import 'package:core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/logout.dart';
import '../domain/model.dart';

class LogoutViewmodel extends StateNotifier<XFormState<LogoutResponse>> {
  final Logout _logout;
  final NetworkErrorMessageMapperBase _networkErrorMessageMapper;

  LogoutViewmodel(
    this._logout,
    this._networkErrorMessageMapper,
  ) : super(const XFormState.draft());

  Future<void> logout() async {
    state = const XFormState.loading();

    final result = await _logout();
    result.when(
      success: (data) => state = XFormState.submitted(data),
      failure: (error) => state = XFormState.error(_networkErrorMessageMapper.transform(error)),
    );
  }
}

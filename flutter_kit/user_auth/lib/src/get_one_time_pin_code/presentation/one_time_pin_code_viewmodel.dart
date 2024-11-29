import 'package:core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/get_one_time_pin_code.dart';
import '../domain/model.dart';

final userEmailProvider = StateProvider<String>((ref) {
  return '';
});

final errorMessageProvider = StateProvider<String?>((ref) {
  return null;
});

typedef GetString = String Function();

class GetOneTimePinCodeViewmodel extends StateNotifier<XFormState<GetOneTimePinCodeResponse>> {
  final Ref _ref;
  final GetOneTimePinCode _getOneTimePinCodesInteractor;
  final NetworkErrorMessageMapperBase _networkErrorMessageMapper;
  final GetString _emailInputError;

  GetOneTimePinCodeViewmodel(
    this._ref,
    this._getOneTimePinCodesInteractor,
    this._networkErrorMessageMapper,
    this._emailInputError,
  ) : super(const XFormState.draft());

  void setEmail(String value) {
    _ref.read(errorMessageProvider.notifier).state = null;
    _ref.read(userEmailProvider.notifier).state = value;
  }

  bool get isSubmitButtonEnabled {
    return _ref.read(userEmailProvider).isNotEmpty;
  }

  Future<void> getOneTimePinCode() async {
    final email = _ref.read(userEmailProvider);
    if (!_isValidEmail(email)) {
      _ref.read(errorMessageProvider.notifier).state = _emailInputError();
      return;
    }

    state = const XFormState.loading();

    final getOneTimePinCodeRequest = GetOneTimePinCodeRequest(email: email);

    final result = await _getOneTimePinCodesInteractor(getOneTimePinCodeRequest);
    result.when(
      success: (data) => state = XFormState.submitted(data),
      failure: (error) => state = XFormState.error(_networkErrorMessageMapper.transform(error)),
    );
  }

  bool _isValidEmail(String value) {
    const pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    return RegExp(pattern).hasMatch(value);
  }
}

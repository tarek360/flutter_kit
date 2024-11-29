import 'package:core/core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_auth/user_auth.dart';

// final _loginProvider = Provider(
//   (ref) => Login(
//     ref.watch(loginRepositoryProvider),
//     ref.watch(refreshTokenRepositoryProvider),
//     ref.watch(_getCachedOneTimePinCodeProvider),
//     ref.watch(_clearOneTimePinCodeCacheProvider),
//     ref.watch(getUserOnboardingInfoProvider),
//     ref.watch(userProfileRepositoryProvider),
//     ref.watch(fetchUserDataProvider),
//   ),
// );
//
// final _getCachedOneTimePinCodeProvider = Provider(
//   (ref) => GetCachedOneTimePinCodeInfo(
//     ref.watch(getOneTimePinCodeRepositoryProvider),
//   ),
// );
//
// final _clearOneTimePinCodeCacheProvider = Provider(
//   (ref) => ClearOneTimePinCodeCache(
//     ref.watch(getOneTimePinCodeRepositoryProvider),
//   ),
// );
//

enum LoginSubmissionState {
  success,
  invalidCode,
  expiredCode,
}

class LoginViewmodel extends StateNotifier<XFormState<LoginSubmissionState>> {
  final pinCodeProvider = StateProvider<List<String>>((ref) {
    // final pinCodeResponse = ref.watch(_getCachedOneTimePinCodeProvider)();
    // if (pinCodeResponse != null) {
    //   return List.generate(pinCodeResponse.numberOfDigits, (index) => '');
      return List.generate(4, (index) => '');
    // } else {
    // return [];
    // }
  });

  final errorMessageProvider = StateProvider.autoDispose<String?>((ref) {
    return null;
  });

  final isPinCodeExpiredProvider = StateProvider.autoDispose<bool>((ref) {
    return false;
  });

  final Ref _ref;
  final Login _login;
  final NetworkErrorMessageMapperBase _networkErrorMessageMapper;
  final ClearOneTimePinCodeCache _clearOneTimePinCodeCache;
  late final String userEmail;

  LoginViewmodel(
    this._ref,
    this._login,
    GetCachedOneTimePinCodeInfo getCachedOneTimePinCode,
    this._clearOneTimePinCodeCache,
    this._networkErrorMessageMapper,
  ) : super(const XFormState.draft()) {
    final pinCodeResponse = getCachedOneTimePinCode();
    if (pinCodeResponse != null) {
      userEmail = pinCodeResponse.userEmail;
    } else {
      userEmail = '';
      _showCodeExpiredPopup();
    }
  }

  Future<void> _showCodeExpiredPopup() async {
    await Future.delayed(const Duration(seconds: 1));
    _ref.read(isPinCodeExpiredProvider.notifier).state = true;
  }

  Future<void> _verifyPinCode() async {
    state = const XFormState.loading();

    final pinCode = int.parse(_ref.read(pinCodeProvider).join());

    final result = await _login(pinCode);

    state = result.when(
      success: (token) => const XFormState.submitted(LoginSubmissionState.success),
      invalidCode: () => const XFormState.submitted(LoginSubmissionState.invalidCode),
      expiredCode: () => const XFormState.submitted(LoginSubmissionState.expiredCode),
      otherError: (error) => XFormState.error(_networkErrorMessageMapper.transform(error)),
    );
  }

  void onBackspaceTap() {
    final values = _ref.read(pinCodeProvider);
    for (var i = values.length - 1; i >= 0; --i) {
      if (values[i].isNotEmpty) {
        values[i] = '';
        break;
      }
    }

    _ref.read(pinCodeProvider.notifier).state = List.of(values);
  }

  void onNumKeyTap(String key) {
    final values = _ref.read(pinCodeProvider);

    final wasLastDigitEmpty = values.last.isEmpty;

    for (var i = 0; i < values.length; ++i) {
      if (values[i].isEmpty) {
        values[i] = key;
        break;
      }
    }

    _ref.read(pinCodeProvider.notifier).state = List.of(values);

    final isLastDigitAdded = wasLastDigitEmpty && values.last.isNotEmpty;

    if (isLastDigitAdded) {
      _verifyPinCode();
    }
  }

  void onOneTimePinCodeTerminated() => _clearOneTimePinCodeCache();
}

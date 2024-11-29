// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Chatbot`
  String get appName {
    return Intl.message(
      'Chatbot',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Spanish`
  String get spanish {
    return Intl.message(
      'Spanish',
      name: 'spanish',
      desc: '',
      args: [],
    );
  }

  /// `French`
  String get french {
    return Intl.message(
      'French',
      name: 'french',
      desc: '',
      args: [],
    );
  }

  /// `German`
  String get german {
    return Intl.message(
      'German',
      name: 'german',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Bulgarian`
  String get bulgarian {
    return Intl.message(
      'Bulgarian',
      name: 'bulgarian',
      desc: '',
      args: [],
    );
  }

  /// `Czech`
  String get czech {
    return Intl.message(
      'Czech',
      name: 'czech',
      desc: '',
      args: [],
    );
  }

  /// `Danish`
  String get danish {
    return Intl.message(
      'Danish',
      name: 'danish',
      desc: '',
      args: [],
    );
  }

  /// `Greek`
  String get greek {
    return Intl.message(
      'Greek',
      name: 'greek',
      desc: '',
      args: [],
    );
  }

  /// `Estonian`
  String get estonian {
    return Intl.message(
      'Estonian',
      name: 'estonian',
      desc: '',
      args: [],
    );
  }

  /// `Finnish`
  String get finnish {
    return Intl.message(
      'Finnish',
      name: 'finnish',
      desc: '',
      args: [],
    );
  }

  /// `Hindi`
  String get hindi {
    return Intl.message(
      'Hindi',
      name: 'hindi',
      desc: '',
      args: [],
    );
  }

  /// `Hungarian`
  String get hungarian {
    return Intl.message(
      'Hungarian',
      name: 'hungarian',
      desc: '',
      args: [],
    );
  }

  /// `Indonesian`
  String get indonesian {
    return Intl.message(
      'Indonesian',
      name: 'indonesian',
      desc: '',
      args: [],
    );
  }

  /// `Italian`
  String get italian {
    return Intl.message(
      'Italian',
      name: 'italian',
      desc: '',
      args: [],
    );
  }

  /// `Japanese`
  String get japanese {
    return Intl.message(
      'Japanese',
      name: 'japanese',
      desc: '',
      args: [],
    );
  }

  /// `Korean`
  String get korean {
    return Intl.message(
      'Korean',
      name: 'korean',
      desc: '',
      args: [],
    );
  }

  /// `Lithuanian`
  String get lithuanian {
    return Intl.message(
      'Lithuanian',
      name: 'lithuanian',
      desc: '',
      args: [],
    );
  }

  /// `Latvian`
  String get latvian {
    return Intl.message(
      'Latvian',
      name: 'latvian',
      desc: '',
      args: [],
    );
  }

  /// `Norwegian`
  String get norwegianBokmal {
    return Intl.message(
      'Norwegian',
      name: 'norwegianBokmal',
      desc: '',
      args: [],
    );
  }

  /// `Dutch`
  String get dutch {
    return Intl.message(
      'Dutch',
      name: 'dutch',
      desc: '',
      args: [],
    );
  }

  /// `Polish`
  String get polish {
    return Intl.message(
      'Polish',
      name: 'polish',
      desc: '',
      args: [],
    );
  }

  /// `Portuguese`
  String get portuguese {
    return Intl.message(
      'Portuguese',
      name: 'portuguese',
      desc: '',
      args: [],
    );
  }

  /// `Portuguese (Brazil)`
  String get portugueseBrazil {
    return Intl.message(
      'Portuguese (Brazil)',
      name: 'portugueseBrazil',
      desc: '',
      args: [],
    );
  }

  /// `Romanian`
  String get romanian {
    return Intl.message(
      'Romanian',
      name: 'romanian',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get russian {
    return Intl.message(
      'Russian',
      name: 'russian',
      desc: '',
      args: [],
    );
  }

  /// `Slovak`
  String get slovak {
    return Intl.message(
      'Slovak',
      name: 'slovak',
      desc: '',
      args: [],
    );
  }

  /// `Slovenian`
  String get slovenian {
    return Intl.message(
      'Slovenian',
      name: 'slovenian',
      desc: '',
      args: [],
    );
  }

  /// `Swedish`
  String get swedish {
    return Intl.message(
      'Swedish',
      name: 'swedish',
      desc: '',
      args: [],
    );
  }

  /// `Thai`
  String get thai {
    return Intl.message(
      'Thai',
      name: 'thai',
      desc: '',
      args: [],
    );
  }

  /// `Turkish`
  String get turkish {
    return Intl.message(
      'Turkish',
      name: 'turkish',
      desc: '',
      args: [],
    );
  }

  /// `Ukrainian`
  String get ukrainian {
    return Intl.message(
      'Ukrainian',
      name: 'ukrainian',
      desc: '',
      args: [],
    );
  }

  /// `Chinese`
  String get chinese {
    return Intl.message(
      'Chinese',
      name: 'chinese',
      desc: '',
      args: [],
    );
  }

  /// `help@tarek360.dev`
  String get customerSupportEmail {
    return Intl.message(
      'help@tarek360.dev',
      name: 'customerSupportEmail',
      desc: '',
      args: [],
    );
  }

  /// `Oops!`
  String get genericErrorMessagePrimary {
    return Intl.message(
      'Oops!',
      name: 'genericErrorMessagePrimary',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong!`
  String get genericErrorMessageSecondary {
    return Intl.message(
      'Something went wrong!',
      name: 'genericErrorMessageSecondary',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get genericErrorMessageButton {
    return Intl.message(
      'OK',
      name: 'genericErrorMessageButton',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get noInternetErrorMessage {
    return Intl.message(
      'No internet connection',
      name: 'noInternetErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgainButtonLabel {
    return Intl.message(
      'Try again',
      name: 'tryAgainButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Go to Home`
  String get goToHomeButtonLabel {
    return Intl.message(
      'Go to Home',
      name: 'goToHomeButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get appBottomHome {
    return Intl.message(
      'Home',
      name: 'appBottomHome',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get appBottomTabProfile {
    return Intl.message(
      'Profile',
      name: 'appBottomTabProfile',
      desc: '',
      args: [],
    );
  }

  /// `What’s your email?`
  String get oneTimePinCodeScreenTitle {
    return Intl.message(
      'What’s your email?',
      name: 'oneTimePinCodeScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `We’ll send a one-time authentication pin code to your email address.`
  String get oneTimePinCodeScreenHint {
    return Intl.message(
      'We’ll send a one-time authentication pin code to your email address.',
      name: 'oneTimePinCodeScreenHint',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get oneTimePinCodeScreenEmailInputLabel {
    return Intl.message(
      'Email',
      name: 'oneTimePinCodeScreenEmailInputLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get oneTimePinCodeScreenEmailInputHint {
    return Intl.message(
      'Enter your email',
      name: 'oneTimePinCodeScreenEmailInputHint',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get oneTimePinCodeScreenEmailInputError {
    return Intl.message(
      'Invalid email',
      name: 'oneTimePinCodeScreenEmailInputError',
      desc: '',
      args: [],
    );
  }

  /// `Oops!`
  String get oneTimePinCodeScreenTooManyAttemptsDialogTitle {
    return Intl.message(
      'Oops!',
      name: 'oneTimePinCodeScreenTooManyAttemptsDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Too many attempts,\nPlease try again later.`
  String get oneTimePinCodeScreenTooManyAttemptsDialogMessage {
    return Intl.message(
      'Too many attempts,\nPlease try again later.',
      name: 'oneTimePinCodeScreenTooManyAttemptsDialogMessage',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get oneTimePinCodeScreenTooManyAttemptsDialogButton {
    return Intl.message(
      'OK',
      name: 'oneTimePinCodeScreenTooManyAttemptsDialogButton',
      desc: '',
      args: [],
    );
  }

  /// `Email not registered`
  String get oneTimePinCodeScreenGoToOnboardingDialogTitle {
    return Intl.message(
      'Email not registered',
      name: 'oneTimePinCodeScreenGoToOnboardingDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `It seems you don't have a profile with us.\nPlease register to continue.`
  String get oneTimePinCodeScreenGoToOnboardingDialogMessage {
    return Intl.message(
      'It seems you don\'t have a profile with us.\nPlease register to continue.',
      name: 'oneTimePinCodeScreenGoToOnboardingDialogMessage',
      desc: '',
      args: [],
    );
  }

  /// `CREATE PROFILE`
  String get oneTimePinCodeScreenGoToOnboardingDialogButton {
    return Intl.message(
      'CREATE PROFILE',
      name: 'oneTimePinCodeScreenGoToOnboardingDialogButton',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get socialLoginOrLabel {
    return Intl.message(
      'OR',
      name: 'socialLoginOrLabel',
      desc: '',
      args: [],
    );
  }

  /// `GOOGLE`
  String get socialLoginGoogleButton {
    return Intl.message(
      'GOOGLE',
      name: 'socialLoginGoogleButton',
      desc: '',
      args: [],
    );
  }

  /// `APPLE`
  String get socialLoginAppleButton {
    return Intl.message(
      'APPLE',
      name: 'socialLoginAppleButton',
      desc: '',
      args: [],
    );
  }

  /// `Enter the pin to verify your login.`
  String get confirmationPinScreenMessage {
    return Intl.message(
      'Enter the pin to verify your login.',
      name: 'confirmationPinScreenMessage',
      desc: '',
      args: [],
    );
  }

  /// `SEND PIN CODE`
  String get confirmationPinScreenContinueButton {
    return Intl.message(
      'SEND PIN CODE',
      name: 'confirmationPinScreenContinueButton',
      desc: '',
      args: [],
    );
  }

  /// `Enter the pin code`
  String get loginScreenTitle {
    return Intl.message(
      'Enter the pin code',
      name: 'loginScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the authentication pin code sent to your email `
  String get loginScreenHint {
    return Intl.message(
      'Enter the authentication pin code sent to your email ',
      name: 'loginScreenHint',
      desc: '',
      args: [],
    );
  }

  /// `Edit email`
  String get loginScreenCancelVerificationDialogTitle {
    return Intl.message(
      'Edit email',
      name: 'loginScreenCancelVerificationDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to edit your email?`
  String get loginScreenCancelVerificationDialogMessagePart1 {
    return Intl.message(
      'Do you want to edit your email?',
      name: 'loginScreenCancelVerificationDialogMessagePart1',
      desc: '',
      args: [],
    );
  }

  /// `If the email above is correct, please enter the pin code sent to your inbox.`
  String get loginScreenCancelVerificationDialogMessagePart2 {
    return Intl.message(
      'If the email above is correct, please enter the pin code sent to your inbox.',
      name: 'loginScreenCancelVerificationDialogMessagePart2',
      desc: '',
      args: [],
    );
  }

  /// `EDIT`
  String get loginScreenCancelVerificationDialogEditButton {
    return Intl.message(
      'EDIT',
      name: 'loginScreenCancelVerificationDialogEditButton',
      desc: '',
      args: [],
    );
  }

  /// `CLOSE`
  String get loginScreenCancelVerificationDialogCloseButton {
    return Intl.message(
      'CLOSE',
      name: 'loginScreenCancelVerificationDialogCloseButton',
      desc: '',
      args: [],
    );
  }

  /// `Invalid pin code`
  String get loginScreenInvalidPinDialogTitle {
    return Intl.message(
      'Invalid pin code',
      name: 'loginScreenInvalidPinDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get loginScreenInvalidPinDialogButton {
    return Intl.message(
      'OK',
      name: 'loginScreenInvalidPinDialogButton',
      desc: '',
      args: [],
    );
  }

  /// `Expired pin code`
  String get loginScreenExpiredPinDialogTitle {
    return Intl.message(
      'Expired pin code',
      name: 'loginScreenExpiredPinDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `START OVER`
  String get loginScreenCancelExpiredPinDialogButton {
    return Intl.message(
      'START OVER',
      name: 'loginScreenCancelExpiredPinDialogButton',
      desc: '',
      args: [],
    );
  }

  /// `By signing in, you agree to our `
  String get loginScreenTermsAndPrivacyPolicyLabelPart1 {
    return Intl.message(
      'By signing in, you agree to our ',
      name: 'loginScreenTermsAndPrivacyPolicyLabelPart1',
      desc: '',
      args: [],
    );
  }

  /// `Terms`
  String get loginScreenTermsAndPrivacyPolicyLabelTerms {
    return Intl.message(
      'Terms',
      name: 'loginScreenTermsAndPrivacyPolicyLabelTerms',
      desc: '',
      args: [],
    );
  }

  /// ` and `
  String get loginScreenTermsAndPrivacyPolicyLabelPart2 {
    return Intl.message(
      ' and ',
      name: 'loginScreenTermsAndPrivacyPolicyLabelPart2',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get loginScreenTermsAndPrivacyPolicyLabelPrivacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'loginScreenTermsAndPrivacyPolicyLabelPrivacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Chat every day`
  String get onboardingSlideTitle1 {
    return Intl.message(
      'Chat every day',
      name: 'onboardingSlideTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Compete and Conquer`
  String get onboardingSlideTitle2 {
    return Intl.message(
      'Compete and Conquer',
      name: 'onboardingSlideTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Elevate your knowledge`
  String get onboardingSlideTitle3 {
    return Intl.message(
      'Elevate your knowledge',
      name: 'onboardingSlideTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Discover the world`
  String get onboardingSlideSubtitle1 {
    return Intl.message(
      'Discover the world',
      name: 'onboardingSlideSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Climb the highest peaks`
  String get onboardingSlideSubtitle2 {
    return Intl.message(
      'Climb the highest peaks',
      name: 'onboardingSlideSubtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Fast and reliable`
  String get onboardingSlideSubtitle3 {
    return Intl.message(
      'Fast and reliable',
      name: 'onboardingSlideSubtitle3',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get onboardingHaveAccountLabel {
    return Intl.message(
      'Already have an account?',
      name: 'onboardingHaveAccountLabel',
      desc: '',
      args: [],
    );
  }

  /// `LOGIN`
  String get onboardingLoginButton {
    return Intl.message(
      'LOGIN',
      name: 'onboardingLoginButton',
      desc: '',
      args: [],
    );
  }

  /// `START CHATTING`
  String get onboardingStartOnboardingButton {
    return Intl.message(
      'START CHATTING',
      name: 'onboardingStartOnboardingButton',
      desc: '',
      args: [],
    );
  }

  /// `Time to create your profile!`
  String get askToCreateProfileMessage1 {
    return Intl.message(
      'Time to create your profile!',
      name: 'askToCreateProfileMessage1',
      desc: '',
      args: [],
    );
  }

  /// `Create your profile to save your streak and track your progress.`
  String get askToCreateProfileMessage2 {
    return Intl.message(
      'Create your profile to save your streak and track your progress.',
      name: 'askToCreateProfileMessage2',
      desc: '',
      args: [],
    );
  }

  /// `CREATE PROFILE`
  String get askToCreateProfileCreateButton {
    return Intl.message(
      'CREATE PROFILE',
      name: 'askToCreateProfileCreateButton',
      desc: '',
      args: [],
    );
  }

  /// `LATER`
  String get askToCreateProfileLaterScreenButton {
    return Intl.message(
      'LATER',
      name: 'askToCreateProfileLaterScreenButton',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get userProfileScreenTitle {
    return Intl.message(
      'Profile',
      name: 'userProfileScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create profile and save your progress.`
  String get userProfileAnonymousUserMessage {
    return Intl.message(
      'Create profile and save your progress.',
      name: 'userProfileAnonymousUserMessage',
      desc: '',
      args: [],
    );
  }

  /// `CREATE PROFILE`
  String get userProfileAnonymousUserCreateProfileButton {
    return Intl.message(
      'CREATE PROFILE',
      name: 'userProfileAnonymousUserCreateProfileButton',
      desc: '',
      args: [],
    );
  }

  /// `SIGN IN`
  String get userProfileAnonymousUserSignInButton {
    return Intl.message(
      'SIGN IN',
      name: 'userProfileAnonymousUserSignInButton',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get userProfileNameLabel {
    return Intl.message(
      'Name',
      name: 'userProfileNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Type your name`
  String get userProfileNameHint {
    return Intl.message(
      'Type your name',
      name: 'userProfileNameHint',
      desc: '',
      args: [],
    );
  }

  /// `SHARE THE LOVE`
  String get userProfileShareButton {
    return Intl.message(
      'SHARE THE LOVE',
      name: 'userProfileShareButton',
      desc: '',
      args: [],
    );
  }

  /// `SEND FEEDBACK`
  String get userProfileFeedbackButton {
    return Intl.message(
      'SEND FEEDBACK',
      name: 'userProfileFeedbackButton',
      desc: '',
      args: [],
    );
  }

  /// `Have Feedback?`
  String get userProfileFeedbackTitle {
    return Intl.message(
      'Have Feedback?',
      name: 'userProfileFeedbackTitle',
      desc: '',
      args: [],
    );
  }

  /// `We're here to help!`
  String get userProfileFeedbackSubtitle {
    return Intl.message(
      'We\'re here to help!',
      name: 'userProfileFeedbackSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `WhatsApp is not installed on your device`
  String get whatsAppNotFoundError {
    return Intl.message(
      'WhatsApp is not installed on your device',
      name: 'whatsAppNotFoundError',
      desc: '',
      args: [],
    );
  }

  /// `JOIN`
  String get userProfilePaywallButton {
    return Intl.message(
      'JOIN',
      name: 'userProfilePaywallButton',
      desc: '',
      args: [],
    );
  }

  /// `Select Avatar`
  String get userAvatarSelectorTitle {
    return Intl.message(
      'Select Avatar',
      name: 'userAvatarSelectorTitle',
      desc: '',
      args: [],
    );
  }

  /// `DONE`
  String get userAvatarSelectorButton {
    return Intl.message(
      'DONE',
      name: 'userAvatarSelectorButton',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, '{name}' is reserved. Please type a different name.`
  String userProfileScreenNameErrorReserved(Object name) {
    return Intl.message(
      'Sorry, \'$name\' is reserved. Please type a different name.',
      name: 'userProfileScreenNameErrorReserved',
      desc: '',
      args: [name],
    );
  }

  /// `Name is too short`
  String get userProfileScreenNameErrorShort {
    return Intl.message(
      'Name is too short',
      name: 'userProfileScreenNameErrorShort',
      desc: '',
      args: [],
    );
  }

  /// `Name is too long`
  String get userProfileScreenNameErrorLong {
    return Intl.message(
      'Name is too long',
      name: 'userProfileScreenNameErrorLong',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get accountDeletionScreenTitle {
    return Intl.message(
      'Delete Account',
      name: 'accountDeletionScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Tap on Delete Account button to delete your account and erase all of your personal data stored by us. You will lose your data. Once completed this action cannot be undone. This deletion can take up to 30 days.`
  String get accountDeletionScreenDescription {
    return Intl.message(
      'Tap on Delete Account button to delete your account and erase all of your personal data stored by us. You will lose your data. Once completed this action cannot be undone. This deletion can take up to 30 days.',
      name: 'accountDeletionScreenDescription',
      desc: '',
      args: [],
    );
  }

  /// `Please note: this action will NOT cancel your existing subscription. Please cancel your subscription on the App Store or the Google Play Store.`
  String get accountDeletionScreenSubscriptionNote {
    return Intl.message(
      'Please note: this action will NOT cancel your existing subscription. Please cancel your subscription on the App Store or the Google Play Store.',
      name: 'accountDeletionScreenSubscriptionNote',
      desc: '',
      args: [],
    );
  }

  /// `DELETE ACCOUNT`
  String get accountDeletionScreenButton {
    return Intl.message(
      'DELETE ACCOUNT',
      name: 'accountDeletionScreenButton',
      desc: '',
      args: [],
    );
  }

  /// `CANCEL`
  String get accountDeletionScreenCancelButton {
    return Intl.message(
      'CANCEL',
      name: 'accountDeletionScreenCancelButton',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to delete your account?`
  String get accountDeletionScreenConfirmationMessage {
    return Intl.message(
      'Do you want to delete your account?',
      name: 'accountDeletionScreenConfirmationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsScreenTitle {
    return Intl.message(
      'Settings',
      name: 'settingsScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Dark mode`
  String get settingsScreenThemeMode {
    return Intl.message(
      'Dark mode',
      name: 'settingsScreenThemeMode',
      desc: '',
      args: [],
    );
  }

  /// `On`
  String get settingsScreenThemeModeOn {
    return Intl.message(
      'On',
      name: 'settingsScreenThemeModeOn',
      desc: '',
      args: [],
    );
  }

  /// `Off`
  String get settingsScreenThemeModeOff {
    return Intl.message(
      'Off',
      name: 'settingsScreenThemeModeOff',
      desc: '',
      args: [],
    );
  }

  /// `System Default`
  String get settingsScreenThemeModeSystem {
    return Intl.message(
      'System Default',
      name: 'settingsScreenThemeModeSystem',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get settingsScreenLogoutButton {
    return Intl.message(
      'Log out',
      name: 'settingsScreenLogoutButton',
      desc: '',
      args: [],
    );
  }

  /// `LOG OUT`
  String get settingsScreenLogoutPositiveButton {
    return Intl.message(
      'LOG OUT',
      name: 'settingsScreenLogoutPositiveButton',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get settingsScreenLogoutNegativeButton {
    return Intl.message(
      'Cancel',
      name: 'settingsScreenLogoutNegativeButton',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to log out?`
  String get settingsScreenLogoutConfirmationMessage {
    return Intl.message(
      'Do you want to log out?',
      name: 'settingsScreenLogoutConfirmationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Terms`
  String get settingsScreenTermsLabel {
    return Intl.message(
      'Terms',
      name: 'settingsScreenTermsLabel',
      desc: '',
      args: [],
    );
  }

  /// ` & `
  String get settingsScreenTermsAndPrivacyAndLabel {
    return Intl.message(
      ' & ',
      name: 'settingsScreenTermsAndPrivacyAndLabel',
      desc: '',
      args: [],
    );
  }

  /// `Privacy`
  String get settingsScreenPrivacyPolicyLabel {
    return Intl.message(
      'Privacy',
      name: 'settingsScreenPrivacyPolicyLabel',
      desc: '',
      args: [],
    );
  }

  /// `Delete account`
  String get settingsScreenDeleteAccountLabel {
    return Intl.message(
      'Delete account',
      name: 'settingsScreenDeleteAccountLabel',
      desc: '',
      args: [],
    );
  }

  /// `Message us`
  String get settingsScreenMessageUsLabel {
    return Intl.message(
      'Message us',
      name: 'settingsScreenMessageUsLabel',
      desc: '',
      args: [],
    );
  }

  /// `We are here to help you! 🐻`
  String get settingsScreenMessageUsHint {
    return Intl.message(
      'We are here to help you! 🐻',
      name: 'settingsScreenMessageUsHint',
      desc: '',
      args: [],
    );
  }

  /// `Already have a subscription?`
  String get settingsScreenRestorePurchasesTitle {
    return Intl.message(
      'Already have a subscription?',
      name: 'settingsScreenRestorePurchasesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Restore purchases`
  String get settingsScreenRestorePurchasesSubtitle {
    return Intl.message(
      'Restore purchases',
      name: 'settingsScreenRestorePurchasesSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Cancel subscription?`
  String get settingsScreenCancelSubscriptionTitle {
    return Intl.message(
      'Cancel subscription?',
      name: 'settingsScreenCancelSubscriptionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Unsubscribe`
  String get settingsScreenCancelSubscriptionSubtitle {
    return Intl.message(
      'Unsubscribe',
      name: 'settingsScreenCancelSubscriptionSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Account Deletion`
  String get deleteAccountTitle {
    return Intl.message(
      'Account Deletion',
      name: 'deleteAccountTitle',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicyTitle {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicyTitle',
      desc: '',
      args: [],
    );
  }

  /// `{h}h {m}m {s}s`
  String timerHMS(Object h, Object m, Object s) {
    return Intl.message(
      '${h}h ${m}m ${s}s',
      name: 'timerHMS',
      desc: '',
      args: [h, m, s],
    );
  }

  /// `{m}m {s}s`
  String timerMS(Object m, Object s) {
    return Intl.message(
      '${m}m ${s}s',
      name: 'timerMS',
      desc: '',
      args: [m, s],
    );
  }

  /// `{s}s`
  String timerS(Object s) {
    return Intl.message(
      '${s}s',
      name: 'timerS',
      desc: '',
      args: [s],
    );
  }

  /// `Could you take a moment to rate us? it helps us a lot 😊`
  String get rateUsPopupMessage {
    return Intl.message(
      'Could you take a moment to rate us? it helps us a lot 😊',
      name: 'rateUsPopupMessage',
      desc: '',
      args: [],
    );
  }

  /// `RATE`
  String get rateUsPopupButton {
    return Intl.message(
      'RATE',
      name: 'rateUsPopupButton',
      desc: '',
      args: [],
    );
  }

  /// `A new app version is available. Update now for the best experience!`
  String get appUpdatePopupMessage {
    return Intl.message(
      'A new app version is available. Update now for the best experience!',
      name: 'appUpdatePopupMessage',
      desc: '',
      args: [],
    );
  }

  /// `UPDATE`
  String get appUpdatePopupButton {
    return Intl.message(
      'UPDATE',
      name: 'appUpdatePopupButton',
      desc: '',
      args: [],
    );
  }

  /// `days`
  String get days {
    return Intl.message(
      'days',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `hours`
  String get hours {
    return Intl.message(
      'hours',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `minutes`
  String get minutes {
    return Intl.message(
      'minutes',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `seconds`
  String get seconds {
    return Intl.message(
      'seconds',
      name: 'seconds',
      desc: '',
      args: [],
    );
  }

  /// `Chatbot`
  String get chatbotScreenTitle {
    return Intl.message(
      'Chatbot',
      name: 'chatbotScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `New chat`
  String get chatbotScreenNewChat {
    return Intl.message(
      'New chat',
      name: 'chatbotScreenNewChat',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

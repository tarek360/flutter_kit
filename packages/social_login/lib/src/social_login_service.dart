import 'package:core/core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

enum SocialLoginType {
  google,
  apple,
}

class SocialLoginInfo {
  final String email;
  final String token;
  final SocialLoginType type;

  SocialLoginInfo({
    required this.email,
    required this.token,
    required this.type,
  });
}

class SocialLoginService {
  SocialLoginService();

  final _googleSignIn = GoogleSignIn.instance;

  Future<SocialLoginInfo?> signInWithSocial(SocialLoginType type) async {
    try {
      switch (type) {
        case SocialLoginType.google:
          return await _signInWithGoogle();
        case SocialLoginType.apple:
          return await _signInWithApple();
      }
    } catch (e) {
      Logger.e('Social login error: $e');
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut();
    } catch (e) {
      Logger.e('Google Sign-out error: $e');
    }
  }

  Future<SocialLoginInfo?> _signInWithGoogle() async {
    try {
      GoogleSignInAccount? account =
          await (_googleSignIn.attemptLightweightAuthentication() ??
              Future.value());

      account ??= await _googleSignIn.authenticate();

      final idToken = account.authentication.idToken;
      if (idToken == null) {
        return null;
      }

      return SocialLoginInfo(
        email: account.email,
        token: idToken,
        type: SocialLoginType.google,
      );
    } catch (e) {
      Logger.e('Google Sign-In error: $e');
      return null;
    }
  }

  Future<SocialLoginInfo?> _signInWithApple() async {
    try {
      final result = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final identityToken = result.identityToken;
      if (identityToken == null) {
        return null;
      }

      final email = _extractEmail(identityToken);

      return SocialLoginInfo(
        email: email,
        token: identityToken,
        type: SocialLoginType.apple,
      );
    } catch (e) {
      Logger.e('Apple Sign-In error: $e');
      return null;
    }
  }

  String _extractEmail(String identityToken) {
    final parts = Jwt.parseJwt(identityToken);
    final email = parts['email'];
    if (email is! String) {
      Logger.er('Invalid email in Apple ID token: $email');
      return '';
    }
    return email;
  }
}

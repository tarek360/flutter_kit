import 'package:core/core.dart';
import 'package:jwt_decode/jwt_decode.dart';

import '../../logout/domain/logout.dart';
import '../domain/refresh_token_repository.dart';

const Duration _tokenRefreshPeriodDuration = Duration(hours: 24);

class RefreshToken {
  const RefreshToken(this._refreshTokenRepository, this._logout);

  final RefreshTokenRepository _refreshTokenRepository;
  final Logout _logout;

  /// returns true if the user is authorized.
  Future<bool> handleUserToken() async {
    final userToken = _refreshTokenRepository.userToken;

    if (userToken != null) {
      final isUserAuthorized = await _refreshTokenIfNeeded(userToken);
      if (!isUserAuthorized) {
        _logout();
      }
      return isUserAuthorized;
    }
    return false;
  }

  /// returns true if the user is authorized.
  Future<bool> _refreshTokenIfNeeded(String userToken) async {
    final isUserAuthorized = !_isTokenExpired(userToken);

    if (isUserAuthorized && _isItTimeToRefreshToken()) {
      final result = await _refreshTokenRepository.getRefreshedToken();
      return result.when(
        success: (token) {
          _refreshTokenRepository.saveToken(token);
          return true;
        },
        failure: (error) => error != ResultErrorType.unauthorised,
      );
    }

    return isUserAuthorized;
  }

  bool _isItTimeToRefreshToken() {
    final lastRefreshTokenTimeInt = _refreshTokenRepository.lastRefreshTokenTime;
    if (lastRefreshTokenTimeInt != null) {
      final lastRefreshTokenDateTime = DateTime.fromMillisecondsSinceEpoch(lastRefreshTokenTimeInt);
      final secondsSinceLastCall = DateTime.now().difference(lastRefreshTokenDateTime).inSeconds;
      return secondsSinceLastCall > _tokenRefreshPeriodDuration.inSeconds;
    }
    return true;
  }

  bool _isTokenExpired(String token) {
    final expiryDate = Jwt.getExpiryDate(token);
    if (expiryDate != null) {
      return expiryDate.isBefore(DateTime.now().toUtc());
    }
    return true;
  }
}

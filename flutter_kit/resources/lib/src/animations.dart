import 'package:design_system/design_system.dart';

class AppAnimations {
  const AppAnimations._();

  static const noInternetConnection = AnimationData('no_internet_connection');
  static const genericError = AnimationData('generic_error');
  static const keyAlive = AnimationData('key_alive');
  static const shiningBackground = AnimationData('shining_background');
  static const flyingTrophy = AnimationData('flying_trophy');
  static const runningLeaderboard = AnimationData('running_leaderboard', lightAndDark: true);
  static const streakIcon = AnimationData('streak_icon');
  static const confettiStreak = AnimationData('confetti_streak');
  static const paywallHeader = AnimationData('paywall_header');
  static const extraHeader = AnimationData('extra_header');
  static const discountPercentage = AnimationData('discount_percentage');
}

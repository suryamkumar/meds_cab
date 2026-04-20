class AppConstants {

  // ── App Info ──────────────────────────────────────────────────────────────
  static const String appName = 'MedsCab';
  static const String appVersion = '1.0.0';

  // ── API ───────────────────────────────────────────────────────────────────
  static const String baseUrl = 'https://api.baseUrl.in';
  static const Duration requestTimeout = Duration(seconds: 30);

  // ── Pagination ────────────────────────────────────────────────────────────
  static const int defaultPageSize = 20;

  // ── Task ──────────────────────────────────────────────────────────────────
  static const int totalTasks = 1;
  static const int otpLength = 6;
  static const int otpExpirySeconds = 600; // 10 minutes

  // ── Storage Keys ─────────────────────────────────────────────────────────
  static const String userKey = 'user_data';
  static const String onboardingKey = 'onboarding_done';
  // Also Use Flutter Secure Storage to store JWT and other sensitive data e.g profile data of user

}
enum AppEnvironment {
  development,
  staging,
  production,
}

class AppEnvironmentConfig {
  const AppEnvironmentConfig._();

  static const AppEnvironment current = AppEnvironment.development;

  static bool get isDevelopment => current == AppEnvironment.development;
  static bool get isStaging => current == AppEnvironment.staging;
  static bool get isProduction => current == AppEnvironment.production;
}
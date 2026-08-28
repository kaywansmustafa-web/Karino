import 'package:flutter/material.dart';

import '../core/theme/karino_colors.dart';
import '../core/theme/karino_radius.dart';

class KarinoTheme {
  const KarinoTheme._();

  static ThemeData get light {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: KarinoColors.primary,
      brightness: Brightness.light,
      primary: KarinoColors.primary,
      surface: KarinoColors.surface,
      error: KarinoColors.error,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: KarinoColors.background,
      fontFamily: null,

      appBarTheme: const AppBarTheme(
        centerTitle: false,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: KarinoColors.textPrimary,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: KarinoColors.surface,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(KarinoRadius.md),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(KarinoRadius.md),
          borderSide: const BorderSide(
            color: KarinoColors.border,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(KarinoRadius.md),
          borderSide: const BorderSide(
            color: KarinoColors.primary,
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(KarinoRadius.md),
          borderSide: const BorderSide(
            color: KarinoColors.error,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(KarinoRadius.md),
          borderSide: const BorderSide(
            color: KarinoColors.error,
            width: 1.5,
          ),
        ),
      ),

      cardTheme: CardThemeData(
        color: KarinoColors.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(KarinoRadius.lg),
        ),
      ),

      dividerTheme: const DividerThemeData(
        color: KarinoColors.border,
        thickness: 1,
        space: 1,
      ),
    );
  }
}
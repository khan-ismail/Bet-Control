import 'package:betcontrol/core/theme/app_pallet.dart';
import 'package:betcontrol/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static const _colorScheme = ColorScheme.light(
    surface: AppPallete.backgroundColor,
    onSurface: AppPallete.primary,
    primary: AppPallete.primary,
    onPrimary: AppPallete.whiteColor,
    error: AppPallete.error,
  );

  static _border([Color color = AppPallete.primary]) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      );

  static const _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(AppPallete.primary),
      foregroundColor: WidgetStatePropertyAll(AppPallete.whiteColor),
    ),
  );

  static _outlinedButtonTheme([Color borderColor = AppPallete.primary]) =>
      OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              side: BorderSide(width: 3, color: borderColor),
            ),
          ),
        ),
      );

  static const _appBarTheme = const AppBarTheme(
    backgroundColor: AppPallete.backgroundColor,
  );

  static final lightThemeMode = ThemeData.light().copyWith(
    colorScheme: _colorScheme,
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    appBarTheme: _appBarTheme,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _border(),
      focusedBorder: _border(),
    ),
    elevatedButtonTheme: _elevatedButtonTheme,
    outlinedButtonTheme: _outlinedButtonTheme(),
    textTheme: GoogleFonts.nunitoTextTheme().copyWith(
      bodyLarge: AppTextStyles.bodyLarge,
      bodyMedium: AppTextStyles.bodyMedium,
      bodySmall: AppTextStyles.bodySmall,
      displayLarge: AppTextStyles.displayLarge,
      displayMedium: AppTextStyles.displayMedium,
      displaySmall: AppTextStyles.displaySmall,
      headlineLarge: AppTextStyles.headlineLarge,
      headlineMedium: AppTextStyles.headlineMedium,
      headlineSmall: AppTextStyles.headlineSmall,
      labelLarge: AppTextStyles.labelLarge,
      labelMedium: AppTextStyles.labelMedium,
      labelSmall: AppTextStyles.labelSmall,
      titleLarge: AppTextStyles.titleLarge,
      titleMedium: AppTextStyles.titleMedium,
      titleSmall: AppTextStyles.titleSmall,
    ),
  );
}

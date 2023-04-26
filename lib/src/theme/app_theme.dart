import 'package:agtmovel/src/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData mainTheme = ThemeData.light().copyWith(
    primaryColor: AppColor.primaryColorSwatch,
    inputDecorationTheme: _inputDecorationTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    outlinedButtonTheme: _outlinedButtonTheme,
    colorScheme: _colorScheme.copyWith(background: AppColor.backgroundColor),
  );
}

ColorScheme get _colorScheme => ColorScheme.fromSwatch(
      backgroundColor: AppColor.backgroundColor,
      primarySwatch: AppColor.primaryColorSwatch,
    );

InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
      contentPadding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: AppColor.secondaryColorSwatch.shade200,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: AppColor.secondaryColorSwatch.shade400,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColor.error,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColor.primaryColorSwatch,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColor.primaryColorSwatch,
        ),
      ),
    );

ElevatedButtonThemeData get _elevatedButtonTheme => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        elevation: 0,
      ),
    );

OutlinedButtonThemeData get _outlinedButtonTheme => OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          side: BorderSide(
            color: AppColor.primaryColorSwatch,
            width: 4,
          ),
        ),
        side: const BorderSide(color: AppColor.primaryColorSwatch),
        elevation: 0,
      ),
    );

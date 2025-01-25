// ignore_for_file: prefer_final_fields
import 'package:firebase_complete/core/theme/app_pallete.dart';
import 'package:firebase_complete/features/auth/view/widgets/app_text_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //border
  static OutlineInputBorder _border(Color color, double rad) =>
      OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(rad)),
          borderSide: BorderSide(color: color));

  static final darkThemeMode = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Pallete.primaryDarkColor,
      inputDecorationTheme: InputDecorationTheme(
          labelStyle: AppTextStyles.normal(color: Pallete.subtitleColor),
          floatingLabelStyle: AppTextStyles.normal(color: Pallete.buttonColor),
          contentPadding: const EdgeInsets.all(16),
          enabledBorder: _border(Pallete.buttonDisabledColor, 8),
          focusedBorder: _border(Pallete.buttonColor, 24)),
      appBarTheme: const AppBarTheme(
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ));

  static final lightThemeMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Pallete.primaryLightColor,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: AppTextStyles.normal(color: Pallete.subtitleLightColor),
      floatingLabelStyle: AppTextStyles.normal(color: Pallete.buttonColor),
      contentPadding: const EdgeInsets.all(16),
      enabledBorder: _border(Pallete.buttonDisabledLightColor, 8),
      focusedBorder: _border(Pallete.buttonColor, 24),
    ),
    appBarTheme: const AppBarTheme(
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      backgroundColor: Colors.transparent,
    ),
  );
}

import 'package:flutter/material.dart';

class Pallete {
  // Primary colors
  static const Color primaryColor = Color(0xFF1DB954); // Spotify Green
  static const Color primaryDarkColor =
      Color(0xFF121212); // Dark background for primary areas
  static const Color primaryLightColor =
      Color(0xFFB4FFB4); // Lighter green for accents

  // Secondary colors
  static const Color accentColor =
      Color(0xFFBB86FC); // Light purple for highlights
  static const Color accentDarkColor =
      Color(0xFF3700B3); // Dark purple for buttons or icons

  // Background colors
  static const Color backgroundColor =
      Color(0xFF181818); // Dark mode background
  static const Color cardBackgroundColor =
      Color(0xFF222222); // Cards and containers

  // Text colors
  static const Color textColor =
      Color(0xFFFFFFFF); // White text for readability
  static const Color subtitleColor =
      Color(0xFFB3B3B3); // Light gray for subtitles

  // Button colors
  static const Color buttonColor =
      Color(0xFF1DB954); // Green for play/pause buttons
  static const Color buttonDisabledColor =
      Color(0xFF757575); // Disabled button state

  // Icon colors
  static const Color iconColor = Color(0xFFFFFFFF); // White icons for contrast
  static const Color iconInactiveColor =
      Color(0xFFB0B0B0); // Inactive icons for settings, etc.

  // Gradient for background (Optional)
  static const LinearGradient gradientBackground = LinearGradient(
    colors: [
      Color.fromARGB(255, 21, 126, 58),
      Color.fromARGB(255, 47, 190, 97)
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );
}

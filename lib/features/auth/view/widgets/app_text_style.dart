
import 'package:firebase_complete/core/theme/font.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  // Normal font style
  static TextStyle normal({
    double fontSize = 20.0,
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontFamily: appFont,
      fontSize: fontSize,
      color: color,
    );
  }

  // Bold font style
  static TextStyle bold({
    double fontSize = 24.0,
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontFamily: appFont,
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  // Italic font style
  static TextStyle italic({
    double fontSize = 24.0,
    Color color = Colors.white,
  }) {
    return TextStyle(
        fontFamily: appFont,
        fontSize: fontSize,
        color: color,
        fontStyle: FontStyle.italic);
  }
}

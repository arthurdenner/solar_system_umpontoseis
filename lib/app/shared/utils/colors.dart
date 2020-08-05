import 'package:flutter/material.dart';

class AppColors {
  static Color brand = Color(0xFF151515);
  static Color brandWhite = Color(0xFFFFFFFF);
  static Color brandWhiteOpaque = Color(0xFFFFFFFF).withOpacity(0.65);
  static Gradient gradientButton = LinearGradient(
    colors: [Color(0xFFEF5F53), Color(0xFFFA8F70)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static Gradient gradientBlue = LinearGradient(
    colors: [Color(0xFF5935FF), Color(0xFF47408E)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static Gradient gradientPink = LinearGradient(
    colors: [Color(0xFFFF6CD9), Color(0xFFFF2184)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static Gradient gradientCyan = LinearGradient(
    colors: [Color(0xFF01D4E4), Color(0xFF009DE0)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static Gradient gradientYellow = LinearGradient(
    colors: [Color(0xFFF9C270), Color(0xFFFFAA2B)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

import 'dart:ui';
import 'package:flutter/material.dart';

class ZColors {
  static const Color primary =
      Color(0xFF2E2E3E); // Base accent color (dark gray)
  static const Color secondary = Color(0xFFABE505);
  static const Color secondary2 = Color(0xFF848184);

  // Lighter shades for increased visibility on light backgrounds
  static const Color light1 = Color(0xFF44455C);
  static const Color light2 = Color(0xFF848184);
  static const Color light3 = Color(0xFF8B8B8B);
  static const Color light4 = Color(0xFFA9A9A9);

  // Darker shades for better contrast on dark backgrounds
  static const Color dark1 = Color(0xFF1C1C1C);
  static const Color dark2 = Color(0xFF0A0A0A);

  // Prime Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  //Card BG
  static const Color cardBgMain = Color(0xFF2E2E3E);

  // Helper method for generating custom shades (optional)
  static Color getShade(double lightness) {
    final int red = (primary.red * lightness).round();
    final int green = (primary.green * lightness).round();
    final int blue = (primary.blue * lightness).round();
    return Color.fromRGBO(red, green, blue, primary.opacity);
  }

  static const infoTileGrad = LinearGradient(
    begin: Alignment(0.0, 0.0), // Start point of the gradient
    end: Alignment(0.707, -0.707), // End point of the gradient
    colors: [
      Color(0xff3B3A4F), // First color stop
      Color(0xff46475E), // Second color stop
    ],
  );

  static const activeTileGrad = LinearGradient(
    begin: Alignment(0.0, 0.0), // Start point of the gradient
    end: Alignment(0.707, -0.707), // End point of the gradient
    colors: [
      Color(0xff3B3A4F), // First color stop
      Color(0xff46475E), // Second color stop
    ],
  );
  static final innerShadowGradient = LinearGradient(
    begin: Alignment.topLeft, // Start point (can be adjusted for direction)
    end: Alignment.bottomRight, // End point (can be adjusted for direction)
    colors: [
      const Color.fromARGB(255, 37, 37, 37), // Darker color for inner rim
      primary, // Lighter color fading to center
    ],
  );
}

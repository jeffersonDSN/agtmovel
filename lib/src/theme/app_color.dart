import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const primaryColorSwatch = MaterialColor(
    0xff3370FF,
    <int, Color>{
      50: Color(0xFFD8E2FE),
      100: Color(0xFFD6E7FF),
      200: Color(0xFFADCDFF),
      300: Color(0xFF84B0FF),
      400: Color(0xFF6698FF),
      500: Color(0xFF3370FF),
      600: Color(0xFF2556DB),
      700: Color(0xFF193FB7),
      800: Color(0xFF102B93),
      900: Color(0xFF091D7A),
    },
  );

  static const secondaryColorSwatch = MaterialColor(
    0xff0B141F,
    <int, Color>{
      50: Color(0xFFF3F4F6),
      100: Color(0xFFF3F4F6),
      200: Color(0xFFACAFC6),
      300: Color(0xFFACAFC6),
      400: Color(0xFF72798B),
      500: Color(0xFF72798B),
      600: Color(0xFF242D3A),
      700: Color(0xFF242D3A),
      800: Color(0xFF0B141F),
      900: Color(0xFF0B141F),
    },
  );

  static const greyColorSwatch = MaterialColor(
    0xffBAC1CB,
    <int, Color>{
      50: Color(0xFFF8F8F8),
      100: Color(0xFFEFF2F6),
      200: Color(0xFFE8ECF1),
      300: Color(0xFFD7DDE4),
      400: Color(0xFFBAC1CB),
      500: Color(0xffAFB9C6),
      600: Color(0xFF919CA8),
      700: Color(0xFF68737E),
      800: Color(0xFF38414B),
      900: Color(0xFF1D252E),
    },
  );

  static const backgroundColor = Color(0xFFF3F3F3);

  static const lightColor = Color(0xffFFFFFF);

  static const blue = Color(0xff3370FF);
  static const green = Color(0xff4bbf28);
  static const yellow = Color(0xffFFAA0C);
  static const red = Color(0xffFF462D);

  static const success = MaterialColor(
    0xff4bbf28,
    <int, Color>{
      50: Color(0xFFD8E2FE),
      100: Color(0xFFE8FBD3),
      200: Color(0xFFCDF8A9),
      300: Color(0xFFA5EB7B),
      400: Color(0xFF7FD858),
      500: Color(0xff4BBF28),
      600: Color(0xFF32A41D),
      700: Color(0xFF1E8914),
      800: Color(0xFF0E6E0C),
      900: Color(0xFF075B0C),
    },
  );

  static const info = MaterialColor(
    0xff4AA8F9,
    <int, Color>{
      50: Color(0xFFD8E2FE),
      100: Color(0xFFDAF5FE),
      200: Color(0xFFB6E8FE),
      300: Color(0xFF92D7FD),
      400: Color(0xFF76C5FB),
      500: Color(0xff4AA8F9),
      600: Color(0xFF3683D6),
      700: Color(0xFF2562B3),
      800: Color(0xFF174590),
      900: Color(0xFF0E3077),
    },
  );

  static const warning = MaterialColor(
    0xffC69100,
    <int, Color>{
      50: Color(0xFFD8E2FE),
      100: Color(0xFFFFF4CE),
      200: Color(0xFFFFE79D),
      300: Color(0xFFFFD66D),
      400: Color(0xFFFFC548),
      500: Color(0xffFFAA0C),
      600: Color(0xFFDB8A08),
      700: Color(0xFFB76C06),
      800: Color(0xFF935203),
      900: Color(0xFF7A3F02),
    },
  );

  static const error = MaterialColor(
    0xff8E2A16,
    <int, Color>{
      50: Color(0xFFD8E2FE),
      100: Color(0xFFFFE7D5),
      200: Color(0xFFFFC9AB),
      300: Color(0xFFFFA481),
      400: Color(0xFFFF8061),
      500: Color(0xffFF462D),
      600: Color(0xFFDB2820),
      700: Color(0xFFB7161D),
      800: Color(0xFF930E1E),
      900: Color(0xFF7A081F),
    },
  );

  static const LinearGradient loginGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      Color.fromARGB(255, 21, 112, 255),
      Color.fromARGB(255, 212, 247, 255),
    ],
    stops: <double>[0.25, 1.0],
  );

  static const defaultBackgroundGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      primaryColorSwatch,
      primaryColorSwatch,
      Colors.white,
      Colors.white,
    ],
    stops: [0.0, 0.2, 0.2, 1.0],
  );
}

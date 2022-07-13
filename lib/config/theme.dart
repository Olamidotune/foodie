import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primarySwatch: Colors.pink,
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xFFFE3C58)),
    primaryColorDark: const Color(0xFFFC0028),
    primaryColorLight: const Color(0xFFF39AAA),
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: const Color(
      // ignore: use_full_hex_values_for_flutter_colors
      0xfff5f5f5f,
    ),
    fontFamily: 'Mulish',
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Color(0xFF1B071B),
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
      headline2: TextStyle(
        color: Color(0xFF1B071B),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      headline3: TextStyle(
        color: Color(0xFF1B071B),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      headline4: TextStyle(
        color: Color(0xFF1B071B),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      headline5: TextStyle(
        color: Color(0xFF1B071B),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      headline6: TextStyle(
        color: Color(0xFF1B071B),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      bodyText1: TextStyle(
        color: Color(0xFF1B071B),
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
      bodyText2: TextStyle(
        color: Color(0xFF1B071B),
        fontWeight: FontWeight.normal,
        fontSize: 36,
      ),
    ),
  );
}

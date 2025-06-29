import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFFF6FAFF),
    colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF289deb)),
  );
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 35, 35, 35),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Color(0xFF289deb),
    ),
  );
}

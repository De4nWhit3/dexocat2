import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static Color darkSeed = const Color.fromARGB(255, 51, 56, 82);
  static Color lightSeed = const Color.fromARGB(255, 152, 169, 253);

  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: lightSeed),
    scaffoldBackgroundColor: lightSeed,
    brightness: Brightness.light,
  );

  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: darkSeed),
    scaffoldBackgroundColor: darkSeed,
    brightness: Brightness.dark,
  );
}

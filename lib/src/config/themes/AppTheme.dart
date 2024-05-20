import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get light {
    return ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(elevation: 50, color: Colors.blue),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
        splashColor: Colors.transparent,
        fontFamily: 'poppins',
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.black));
  }
}
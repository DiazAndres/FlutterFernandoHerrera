import 'package:flutter/material.dart';

class AppTheme {
  final bool isDarkMode = false;
  final seedColor = Colors.blue;

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: seedColor,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      );
}

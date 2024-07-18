import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() {
    const seedColor = Colors.deepPurple;

    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: seedColor,
      listTileTheme: const ListTileThemeData(
        iconColor: seedColor,
      ),
      // brightness: Brightness.dark,
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

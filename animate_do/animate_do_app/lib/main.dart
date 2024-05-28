import 'package:animate_do_app/config/theme/app_theme.dart';
import 'package:animate_do_app/presentation/screens/pagina1_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animate_do',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: const Pagina1Page(),
    );
  }
}

import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EcommerceSplashScreen extends StatefulWidget {
  static const String name = 'ecommerce_splash_screen';
  const EcommerceSplashScreen({super.key});

  @override
  State<EcommerceSplashScreen> createState() => _EcommerceSplashScreenState();
}

class _EcommerceSplashScreenState extends State<EcommerceSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => context.push('/ecommerce-onboarding'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Material(
      child: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage('assets/img/ecommerce/image2.jpg'),
              fit: BoxFit.cover,
              opacity: 0.4),
        ),
        child: FadeIn(
          duration: const Duration(seconds: 3),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // FadeIn(child: SizedBox.square()),
              Icon(
                Icons.shopping_cart,
                size: 250,
                color: Color.fromARGB(255, 238, 80, 80),
              ),
              Text(
                'DP SHOP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

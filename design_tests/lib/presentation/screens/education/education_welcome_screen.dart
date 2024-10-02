import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EducationWelcomeScreen extends StatelessWidget {
  const EducationWelcomeScreen({super.key});

  static const String name = 'education_welcome_screen';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final colors = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      child: Material(
        child: SizedBox(
          width: width,
          height: height,
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: width,
                    height: height / 1.6,
                    decoration: const BoxDecoration(color: Colors.white),
                  ),
                  Container(
                    width: width,
                    height: height / 1.6,
                    decoration: BoxDecoration(
                      color: colors.primary,
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(70),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/img/books.png',
                        scale: 0.7,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: width,
                  height: height / 2.666,
                  decoration: BoxDecoration(
                    color: colors.primary,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: width,
                  height: height / 2.666,
                  padding: const EdgeInsets.only(top: 40, bottom: 30),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Learning Flutter",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          wordSpacing: 2,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'Learning with Pleasure with Dear Programmer Wherever you are.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Material(
                        color: colors.primary,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () => context.push('/education-home'),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 80,
                            ),
                            child: const Text(
                              'Get Start!',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

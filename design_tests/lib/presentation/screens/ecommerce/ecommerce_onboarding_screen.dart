import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';

class EcommerceOnboardingScreen extends StatelessWidget {
  static const String name = 'ecommerce_onboarding_screen';

  final introKey = GlobalKey<IntroductionScreenState>();

  EcommerceOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 19,
      ),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Shop Now',
          body: 'Voluptate ad reprehenderit pariatur sit reprehenderit.',
          image: Image.asset(
            'assets/img/ecommerce/splash1.png',
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Big Discount',
          body: 'Voluptate ad reprehenderit pariatur sit reprehenderit.',
          image: Image.asset(
            'assets/img/ecommerce/splash2.png',
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Free Delivery',
          body: 'Voluptate ad reprehenderit pariatur sit reprehenderit.',
          image: Image.asset(
            'assets/img/ecommerce/splash3.png',
            width: 200,
          ),
          decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 50),
            child: ElevatedButton(
              onPressed: () => context.push('/ecommerce-home'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(55),
                backgroundColor: const Color(0xFFEF6969),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Let´s Shop',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: const Text(
        'Back',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFFEF6969),
        ),
      ),
      next: const Text(
        'Next',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFFEF6969),
        ),
      ),
      // done: const Text(
      //   'Done',
      //   style: TextStyle(
      //     fontWeight: FontWeight.w600,
      //     color: Color(0xFFEF6969),
      //   ),
      // ),
      // skip: const Text(
      //   'Skip',
      //   style: TextStyle(
      //     fontWeight: FontWeight.w600,
      //     color: Color(0xFFEF6969),
      //   ),
      // ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: const Size.square(10),
        activeSize: const Size(20, 10),
        activeColor: const Color(0xFFEF6969),
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}

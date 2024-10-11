import 'package:design_tests/presentation/screens/ecommerce/ecommerce_home_screen.dart';
import 'package:design_tests/presentation/screens/ecommerce/ecommerce_login_screen.dart';
import 'package:design_tests/presentation/screens/ecommerce/ecommerce_onboarding_screen.dart';
import 'package:design_tests/presentation/screens/ecommerce/ecommerce_splash_screen.dart';
import 'package:design_tests/presentation/screens/education/education_course_screen.dart';
import 'package:design_tests/presentation/screens/education/education_home_screen.dart';
import 'package:design_tests/presentation/screens/education/education_welcome_screen.dart';
import 'package:design_tests/presentation/screens/home/home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/education-welcome',
      name: EducationWelcomeScreen.name,
      builder: (context, state) => const EducationWelcomeScreen(),
    ),
    GoRoute(
      path: '/education-home',
      name: EducationHomeScreen.name,
      builder: (context, state) => const EducationHomeScreen(),
    ),
    GoRoute(
      path: '/education-course/:imgCourse',
      name: EducationCourseScreen.name,
      builder: (context, state) {
        final imgCourse = state.pathParameters['imgCourse'] ?? '';

        return EducationCourseScreen(
          imgCourse: imgCourse,
        );
      },
    ),
    GoRoute(
      path: '/ecommerce-splash',
      name: EcommerceSplashScreen.name,
      builder: (context, state) => const EcommerceSplashScreen(),
    ),
    GoRoute(
      path: '/ecommerce-home',
      name: EcommerceHomeScreen.name,
      builder: (context, state) => const EcommerceHomeScreen(),
    ),
    GoRoute(
      path: '/ecommerce-onboarding',
      name: EcommerceOnboardingScreen.name,
      builder: (context, state) => EcommerceOnboardingScreen(),
    ),
    GoRoute(
      path: '/ecommerce-login',
      name: EcommerceLoginScreen.name,
      builder: (context, state) => const EcommerceLoginScreen(),
    ),
  ],
);

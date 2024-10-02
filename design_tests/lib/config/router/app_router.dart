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
  ],
);

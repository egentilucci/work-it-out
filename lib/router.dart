import 'package:go_router/go_router.dart';
import 'package:work_it_out/pages/home.dart';
import 'package:work_it_out/pages/my_workouts.dart';
import 'package:work_it_out/pages/not_found.dart';

class AppRoutes {
  static const String home = '/';
  static const String myWorkouts = '/my_workouts';
}

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.home,
      redirect: (_, __) => AppRoutes.myWorkouts,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.myWorkouts,
      builder: (context, state) => const MyWorkoutsPage(),
    ),
  ],
  errorBuilder: (context, state) => const NotFoundPage(),
);

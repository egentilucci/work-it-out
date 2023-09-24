import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:work_it_out/pages/create_workout.dart';
import 'package:work_it_out/pages/home.dart';
import 'package:work_it_out/pages/my_workouts.dart';
import 'package:work_it_out/pages/not_found.dart';

class AppRoutes {
  static const String home = '/';
  static const String myWorkouts = '/my_workouts';
  static const String createWorkout = '$myWorkouts/create_workout';
}

// GoRouter configuration
final router = GoRouter(
  initialLocation: AppRoutes.myWorkouts,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      redirect: (_, __) => AppRoutes.myWorkouts,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.myWorkouts,
      builder: (context, state) => const MyWorkoutsPage(),
      routes: [
        GoRoute(
          path: AppRoutes.createWorkout.split('/').last,
          builder: (context, state) => const CreateWorkoutPage(),
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const NotFoundPage(),
  debugLogDiagnostics: kDebugMode,
);

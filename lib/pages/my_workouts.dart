import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:work_it_out/router.dart';
import 'package:work_it_out/widgets/workout_card.dart';

class MyWorkoutsPage extends StatelessWidget {
  const MyWorkoutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: ElevatedButton(
          onPressed: () {
            context.go(AppRoutes.createWorkout);
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            "Create Workout",
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              "My Workouts",
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: const <Widget>[
                  WorkoutCard(),
                  WorkoutCard(),
                  WorkoutCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

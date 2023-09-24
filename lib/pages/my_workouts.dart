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
        backgroundColor: Colors.grey[800],
        title: ElevatedButton(
          onPressed: () {
            context.go(AppRoutes.createWorkout);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red[900],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            "Create Workout",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              const Text(
                "My Workouts",
                style: TextStyle(
                  color: Colors.white,
                ),
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
      ),
    );
  }
}

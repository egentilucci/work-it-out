import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:go_router/go_router.dart';
import 'package:work_it_out/models/exercise.dart';

class CreateWorkoutPage extends StatelessWidget {
  const CreateWorkoutPage({super.key});

  Future<void> loadExerciesSample() async {
    final String jsonString = await rootBundle.loadString('assets/exercises.json');
    final List<dynamic> data = jsonDecode(jsonString);
    data.shuffle();
    final exercise1 = Exercise.fromJson(data[0]);

    print(exercise1.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Create Workout",
          textScaleFactor: 0.75,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () => context.pop(),
            tooltip: "Save",
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text("Test"),
            onPressed: () => loadExerciesSample(),
          ),
        ),
      ),
    );
  }
}

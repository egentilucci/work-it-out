import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateWorkoutPage extends StatelessWidget {
  const CreateWorkoutPage({super.key});

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
        child: Container(),
      ),
    );
  }
}

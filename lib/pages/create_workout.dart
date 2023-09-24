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
        automaticallyImplyLeading: false,
        leadingWidth: 112.0,
        leading: TextButton(
          child: const Text(
            "Cancel",
          ),
          onPressed: () => context.pop(),
        ),
        actions: [
          TextButton(
            child: const Text(
              "Save",
            ),
            onPressed: () => context.pop(),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}

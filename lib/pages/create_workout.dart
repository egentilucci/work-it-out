import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateWorkoutPage extends StatelessWidget {
  const CreateWorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        title: const Text(
          "Create Workout",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        leadingWidth: 112.0,
        leading: TextButton(
          child: Text(
            "Cancel",
            style: TextStyle(
              color: Colors.red[900],
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () => context.pop(),
        ),
        actions: [
          TextButton(
            child: Text(
              "Save",
              style: TextStyle(
                color: Colors.red[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () => context.pop(),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:work_it_out/providers/providers.dart';
import 'package:work_it_out/widgets/exercise_card.dart';

class CreateWorkoutPage extends ConsumerStatefulWidget {
  const CreateWorkoutPage({super.key});

  @override
  ConsumerState<CreateWorkoutPage> createState() => _CreateWorkoutPageState();
}

String? validatorNotEmpty(value) {
  if (value == null || value.isEmpty) {
    return 'Please enter some text';
  }
  return null;
}

class _CreateWorkoutPageState extends ConsumerState<CreateWorkoutPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final exercises = ref.watch(exercisesProvider);

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
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            },
            tooltip: "Save",
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  validator: validatorNotEmpty,
                  decoration: const InputDecoration(
                    labelText: "Name",
                    hintText: "Enter the workout name",
                  ),
                ),
                Expanded(
                  child: Center(
                    child: switch (exercises) {
                      AsyncData(:final value) => ListView.builder(
                          itemBuilder: (context, index) {
                            return ExerciseCard(exercise: value[index]);
                          },
                          itemCount: value.length,
                        ),
                      AsyncError() => const Text('Oops, something unexpected happened'),
                      _ => const CircularProgressIndicator(),
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

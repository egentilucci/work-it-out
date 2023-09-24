import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:work_it_out/models/exercise.dart';

part 'providers.g.dart';

@riverpod
Future<List<Exercise>> exercises(ExercisesRef ref) async {
  final List<dynamic> exercises = json.decode(
    await rootBundle.loadString('assets/exercises.json'),
  );

  return exercises.map((exercise) => Exercise.fromJson(exercise)).toList();
}

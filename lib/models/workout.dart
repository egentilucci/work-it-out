import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:work_it_out/models/exercise.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

@freezed
class Workout with _$Workout {
  const factory Workout({
    required String name,
    required List<Exercise> exercises,
  }) = _Workout;

  factory Workout.fromJson(Map<String, Object?> json) => _$WorkoutFromJson(json);
}

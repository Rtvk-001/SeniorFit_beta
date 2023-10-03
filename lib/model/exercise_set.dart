import 'package:flutter/material.dart';
import 'exercise.dart';



class ExerciseSet {
  final String name;
  final List<Exercise> exercises;
  final String imageUrl;
  final Color color;

  const ExerciseSet({
    required this.name,
    required this.exercises,
    required this.imageUrl,
    required this.color,
  });

  String get totalDuration {
    final duration = exercises.fold(
      Duration.zero,
          (previous, element) => previous + element.duration,
    );

    return duration.inMinutes.toString();
  }
}
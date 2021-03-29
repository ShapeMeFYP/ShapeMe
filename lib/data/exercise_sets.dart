import 'package:shapeme/model/exercise_set.dart';
import 'package:flutter/material.dart';

import 'exercise.dart';

final exerciseSets = [
  ExerciseSet(
    name: 'Push-Up Knee Variant',
    exercises: exercises1,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.low,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Sit Up',
    exercises: exercises2,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.low,
    color: Colors.green.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Star Jump',
    exercises: exercises3,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.low,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'High Knees',
    exercises: exercises4,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.low,
    color: Colors.purple.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Lateral Jump',
    exercises: exercises5,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.low,
    color: Colors.red.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Push-Up',
    exercises: exercises6,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.mid,
    color: Colors.yellowAccent.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Plank',
    exercises: exercises7,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.mid,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Lunge',
    exercises: exercises8,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.mid,
    color: Colors.purple.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Squat',
    exercises: exercises9,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.mid,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Dips',
    exercises: exercises10,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.mid,
    color: Colors.teal.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Side Plank',
    exercises: exercises11,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.hard,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Squat Jumps',
    exercises: exercises12,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.hard,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Flutter Kick',
    exercises: exercises13,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.hard,
    color: Colors.teal.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Lunge Jumps',
    exercises: exercises14,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.hard,
    color: Colors.purple.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Mountain Climbers',
    exercises: exercises15,
    imageUrl: 'build/flutter_assets/icons8-right-arrow-26.png',
    exerciseType: ExerciseType.hard,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
];
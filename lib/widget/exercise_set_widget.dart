import 'package:shapeme/model/exercise_set.dart';
import '../exercise_page.dart';
import 'package:flutter/material.dart';

class ExerciseSetWidget extends StatelessWidget {
  final ExerciseSet exerciseSet;

  const ExerciseSetWidget({
    @required this.exerciseSet,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ExercisePage(exerciseSet: exerciseSet),
    )),
    child: Container(
      padding: const EdgeInsets.all(16),
      height: 100,
      decoration: BoxDecoration(
        color: exerciseSet.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(flex: 3, child: buildText()),
          Expanded(child: Image.asset(exerciseSet.imageUrl))
        ],
      ),
    ),
  );

  Widget buildText() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          exerciseSet.name,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        SizedBox(height: 10),
        Text('30 Seconds'),
      ],
    );
  }
}
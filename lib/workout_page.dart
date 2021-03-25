import 'package:shapeme/widget/exercises_widget.dart';
import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    body: CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        buildAppBar(context),
        ExercisesWidget(),
      ],
    ),
  );

  SliverAppBar buildAppBar(BuildContext context) => SliverAppBar (
    stretch: true,
    title: Text(
      "Workout",
      style: TextStyle(color: Colors.black),),
    backgroundColor: Colors.white,
    centerTitle: true,
    pinned: true,
  );
}
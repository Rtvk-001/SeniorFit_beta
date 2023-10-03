import 'package:instagram_clone_flutter/data/exercise_sets.dart';
import 'package:instagram_clone_flutter/widgets/exercise_set_widget.dart';
import 'package:flutter/material.dart';

class ExercisesWidget extends StatefulWidget {
  @override
  _ExercisesWidgetState createState() => _ExercisesWidgetState();
}

class _ExercisesWidgetState extends State<ExercisesWidget> {

  @override
  Widget build(BuildContext context) =>
      SliverPadding(
        padding: const EdgeInsets.all(16),
        sliver: SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(height: 8),
              Text(
                'Exercise',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),

              SizedBox(height: 8),
              buildWorkouts(),
            ],
          ),
        ),
      );

  Widget buildWorkouts() =>
  Positioned(


        child: Column(
          children: exerciseSets
              .map(
                (exerciseSet) =>
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ExerciseSetWidget(exerciseSet: exerciseSet)),
          )
              .toList(),
        ),
  );
}

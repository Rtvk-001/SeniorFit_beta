import 'package:instagram_clone_flutter/widgets/exercises_widget.dart';

import 'package:flutter/material.dart';

class Easylvl extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        ExercisesWidget(),
      ],
    ),
  );

}
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:workout_tracker/model/exercise.dart';
import 'package:workout_tracker/widgets/exercise/ExerciseContainer.dart';
import 'package:workout_tracker/widgets/exercise/ExerciseWidget.dart';


class WorkoutView extends StatelessWidget {
  List<Exercise> parseJson(String response) {
    if(response==null || response == 'null'){
      return [];
    }
    final parsed = json.decode(response.toString());
    List<Exercise> exercises = [];
    parsed.forEach((k, v) => exercises.add(new Exercise.fromJson(v)));
    return exercises;
  }
  @override
  Widget build(BuildContext context) {
    return new Center(
    // Use future builder and DefaultAssetBundle to load the local JSON file
    child: new FutureBuilder(
    future: DefaultAssetBundle.of(context)
        .loadString('assets/data/basePlan.json'),
    builder: (context, snapshot) {
    List<Exercise> exercises =
    parseJson(snapshot.data.toString());
    return !exercises.isEmpty
    ? new ExerciseContainer(exercises)
        : new Center(child: new CircularProgressIndicator());
    }),
    );
  }

}

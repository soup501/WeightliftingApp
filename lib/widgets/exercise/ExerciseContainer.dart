import 'package:flutter/material.dart';
import 'package:workout_tracker/model/exercise.dart';
import 'package:workout_tracker/widgets/exercise/ExerciseWidget.dart';

class ExerciseContainer extends StatelessWidget {
  final List<Exercise> exercises;

  ExerciseContainer(this.exercises);

  @override
  Widget build(BuildContext context) {
    List<ExerciseWidget> list = [];
    exercises.map((item) => {list.add(ExerciseWidget(item))}).toList();
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('All Exercises'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListView.separated(    //Element-5
              shrinkWrap: true,  //this property is must when you put List/Grid View inside SingleChildScrollView
              physics: AlwaysScrollableScrollPhysics(), //this property is must when you put List/Grid View inside SingleChildScrollView
              itemCount: list.length,
              itemBuilder: (context, i) {
                return list[i];
              },
              separatorBuilder: (context, i) {
                return Divider();
              },
            )
          ],
        ),
      ),
    );
  }
}

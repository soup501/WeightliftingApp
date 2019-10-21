import 'package:flutter/material.dart';
import 'package:workout_tracker/model/exercise.dart';

class ExerciseView extends StatelessWidget {
  Exercise exercise;

  ExerciseView(this.exercise);

  BoxDecoration myBoxDecoration(String position) {
    Border border;
    var borderSide = BorderSide(width: 1.0, color: Colors.black);
    switch (position) {
      case 'start':
        border = Border.all();
        break;
      case 'middle':
        border = Border(right: borderSide, top: borderSide, bottom: borderSide);
        break;
      case 'end':
        border = Border(right: borderSide, top: borderSide, bottom: borderSide);
        break;
      default:
        border = Border.all();
        break;
    }
    return BoxDecoration(border: border);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('test'),
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
            Container(
                padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                              child: Container(
                                  decoration: myBoxDecoration('start'),
                                  child: Center(
                                      child: Text('Left',
                                          textAlign: TextAlign.center)),
                                  height:
                                      MediaQuery.of(context).size.height * 0.1),
                              flex: 6),
                          Expanded(
                              child: Container(
                                  decoration: myBoxDecoration('start'),
                                  child: Center(
                                      child: Text('Right',
                                          textAlign: TextAlign.center)),
                                  height:
                                      MediaQuery.of(context).size.height * 0.1),
                              flex: 4)
                        ]),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                        Widget>[
                      Expanded(
                          child: Container(
                              decoration: myBoxDecoration('start'),
                              child: Icon(
                                Icons.all_inclusive,
                                color: Colors.indigo,
                                size: 60.0,
                                semanticLabel:
                                    'Text to announce in accessibility modes',
                              ),
                              height: MediaQuery.of(context).size.height * 0.1),
                          flex: 1),
                      Expanded(
                          child: Container(
                              decoration: myBoxDecoration('middle'),
                              child: Icon(
                                Icons.assessment,
                                color: Colors.deepOrangeAccent,
                                size: 60.0,
                                semanticLabel:
                                    'Text to announce in accessibility modes',
                              ),
                              height: MediaQuery.of(context).size.height * 0.1),
                          flex: 1),
                      Expanded(
                          child: Container(
                              decoration: myBoxDecoration('end'),
                              child: Icon(
                                Icons.add_box,
                                color: Colors.blue,
                                size: 60.0,
                                semanticLabel:
                                    'Text to announce in accessibility modes',
                              ),
                              height: MediaQuery.of(context).size.height * 0.1),
                          flex: 1)
                    ]),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

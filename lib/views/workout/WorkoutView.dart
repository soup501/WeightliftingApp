import 'package:flutter/material.dart';
import 'package:workout_tracker/showDialog.dart';

class WorkoutView extends StatelessWidget {
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
          title: Text('New Workout'),
        ),
        body: Center(
            child: Container(
                padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 300),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                        Widget>[
                      Expanded(
                          child: Container(
                              decoration: myBoxDecoration('start'),
                              child: new GestureDetector(
                                onTap: () {
                                  showAlert(context);
                                },
                                child: Center(
                                    child: Text('Left',
                                        textAlign: TextAlign.center)),
                              ),
                              height: MediaQuery.of(context).size.height * 0.1),
                          flex: 6),
                      Expanded(
                          child: Container(
                              decoration: myBoxDecoration('start'),
                              child: Center(
                                  child: Text('Right',
                                      textAlign: TextAlign.center)),
                              height: MediaQuery.of(context).size.height * 0.1),
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
                                semanticLabel: 'Text to announce in accessibility modes',
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
                ))));
  }
}

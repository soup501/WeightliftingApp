import 'package:flutter/material.dart';

class Workout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New Workout'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              child: Text('Push Day'),
              onPressed: () {
                // Navigate to second route when tapped.
              },
            ),
            new RaisedButton(
              child: Text('Pull Day'),
              onPressed: () {
                // Navigate to second route when tapped.
              },
            ),
          ],
        )
        )
    );
  }
}

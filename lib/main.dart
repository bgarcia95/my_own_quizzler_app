// Flutter code sample for material.Scaffold.1

// This example shows a [Scaffold] with an [AppBar], a [BottomAppBar] and a
// [FloatingActionButton]. The [body] is a [Text] placed in a [Center] in order
// to center the text within the [Scaffold] and the [FloatingActionButton] is
// centered and docked within the [BottomAppBar] using
// [FloatingActionButtonLocation.centerDocked]. The [FloatingActionButton] is
// connected to a callback that increments a counter.

import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: QuizzlerBody(),
      ),
    );
  }
}

class QuizzlerBody extends StatefulWidget {
  @override
  _QuizzlerBodyState createState() => _QuizzlerBodyState();
}

class _QuizzlerBodyState extends State<QuizzlerBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'Here is where the question will go.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: FlatButton(
                color: Colors.green,
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  //The user  picked true.
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: FlatButton(
                color: Colors.red,
                child: Text(
                  'False',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  //The user picked false
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
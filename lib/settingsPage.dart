import 'package:flutter/material.dart';
import 'package:flutter_sandbox/swimLane.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text('Text'),
      SwimLane(),
      SwimLane(),
      SwimLane(),
    ]);
  }
}

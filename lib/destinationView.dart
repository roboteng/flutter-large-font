import 'package:flutter/material.dart';
import 'package:flutter_sandbox/destination.dart';

class DestinationView extends StatelessWidget {
  final Destination dest;
  DestinationView({Key key, this.dest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('${this.dest.title}'
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: this.dest.child,)
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_sandbox/destination.dart';
import 'package:flutter_sandbox/destinationView.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          top: false,
          child: IndexedStack(
            index: _currentIndex,
            children: allDestinations.map<Widget>((Destination destination) {
              return DestinationView(dest: destination);
            }).toList(),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: allDestinations.map((Destination destination) {
            return BottomNavigationBarItem(
              icon: Icon(
                destination.icon,
                color: Colors.black,
              ),
              title: Text(destination.title,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

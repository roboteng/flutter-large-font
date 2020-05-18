import 'package:flutter/material.dart';
import 'package:flutter_sandbox/settingsPage.dart';
import 'package:flutter_sandbox/textSize.dart';

import 'home.dart';

class Destination{
  final String title;
  final IconData icon;
  final Widget child;
  Destination(this.title, this.icon, this.child);
}

List<Destination> allDestinations = <Destination>[
  Destination('Home',Icons.home, HomeView()),
  //Destination('Settings', Icons.settings, SettingsPage()),
  Destination('Search', Icons.search, TextSizePage()),
  //Destination('Cake', Icons.cake, SizedBox(width: 15.0, height: 20.0,)),
];
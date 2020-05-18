import 'package:flutter/material.dart';
import 'package:flutter_kite_beta/flutter_kite_beta.dart';
import 'package:flutter_sandbox/destinationView.dart';

class HomeView extends DestinationView {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          KiteDisplayText(
            'Display Text',
          ),
          KiteTitle1Text('Title 1 Text'),
          KiteTitle2Text('Title 2 Text'),
          KiteTitle3Text('Title 3 Text'),
          KiteBodyText(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          ),
        ],
      ),
    );
  }
}

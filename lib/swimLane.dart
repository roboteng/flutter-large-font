import 'package:flutter/material.dart';
import 'package:flutter_kite_beta/flutter_kite_beta.dart';

class SwimLane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          KiteTitle3Text('Swim Lane'),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
                SwimLaneCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SwimLaneCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFCCCCCC),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text('Card'),
            Image(
              width: 150.0,
              semanticLabel: "Magical Trevor",
              image: NetworkImage('https://picon.ngfiles.com/181000/flash_181469_largest_crop.jpg?f1405623592'),
            ),
          ],
        ),
      ),
    );
  }
}

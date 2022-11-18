import 'package:flutter/material.dart';

class TabBar extends StatelessWidget {
  const TabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Icon(Icons.directions_car),
      Icon(Icons.directions_transit),
    ]);
  }
}
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  final String name;
  final int roll;
  SecondPage({@required this.name,@required this.roll});

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: <Widget>[
        Text(name),
        Text(roll.toString())
      ],
    ),);
  }

}
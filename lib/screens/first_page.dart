import 'package:flutter/cupertino.dart';

class FirstPage extends StatelessWidget{
  final String name;
  FirstPage({@required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(name),);
  }

}
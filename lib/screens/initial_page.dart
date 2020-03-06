import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/routes/router.gr.dart';
import 'package:flutter_navigation/screens/second_page.dart';

class InitialPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: Text("Go To First Page",style: TextStyle(fontSize: 30),),
              onTap: ()=>navigateToFirstPage(),
            ),
            Padding(padding: EdgeInsets.fromLTRB(8, 16, 8, 16),),
            GestureDetector(
              child: Text("Go To Second Page",style: TextStyle(fontSize: 30),),
              onTap: ()=>navigateToSecondPage(),
            )
          ],
        )
      )

      ,

    );
  }

  navigateToFirstPage() {
    Router.navigator.pushNamed(Router.firstPage,arguments: "Niloy you are boss");
  }

  navigateToSecondPage() {
    Router.navigator.pushNamed(Router.secondPage,arguments: SecondPageArguments(name: "Niloy",roll: 150,));
  }

}
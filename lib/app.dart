import 'package:flutter/material.dart';
import 'screens/initial_page.dart';
import 'routes/router.gr.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Router.initialPage,
      onGenerateRoute: Router.onGenerateRoute,
      navigatorKey: Router.navigatorKey,
    );
  }

}
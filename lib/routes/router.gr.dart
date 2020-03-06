// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:flutter_navigation/screens/initial_page.dart';
import 'package:flutter_navigation/screens/first_page.dart';
import 'package:flutter_navigation/screens/second_page.dart';
import 'package:auto_route/transitions_builders.dart';

class Router {
  static const initialPage = '/';
  static const firstPage = '/first-page';
  static const secondPage = '/second-page';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<Router>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.initialPage:
        return MaterialPageRoute(
          builder: (_) => InitialPage(),
          settings: settings,
        );
      case Router.firstPage:
        if (hasInvalidArgs<String>(args, isRequired: true)) {
          return misTypedArgsRoute<String>(args);
        }
        final typedArgs = args as String;
        return MaterialPageRoute(
          builder: (_) => FirstPage(name: typedArgs),
          settings: settings,
          fullscreenDialog: true,
        );
      case Router.secondPage:
        if (hasInvalidArgs<SecondPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<SecondPageArguments>(args);
        }
        final typedArgs = args as SecondPageArguments;
        return PageRouteBuilder(
          pageBuilder: (ctx, animation, secondaryAnimation) =>
              SecondPage(name: typedArgs.name, roll: typedArgs.roll),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.zoomIn,
          transitionDuration: Duration(milliseconds: 200),
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//SecondPage arguments holder class
class SecondPageArguments {
  final String name;
  final int roll;
  SecondPageArguments({@required this.name, @required this.roll});
}

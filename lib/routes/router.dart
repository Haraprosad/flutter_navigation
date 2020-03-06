import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route/transitions_builders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_navigation/screens/first_page.dart';
import 'package:flutter_navigation/screens/second_page.dart';
import 'package:flutter_navigation/screens/initial_page.dart';

@autoRouter
class $Router{
  @initial
  InitialPage initialPage;
  @MaterialRoute(fullscreenDialog: true)
  FirstPage firstPage;
  @CustomRoute(
    transitionsBuilder: TransitionsBuilders.zoomIn,
    durationInMilliseconds: 200
  )
  SecondPage secondPage;
}
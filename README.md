Navigation
Source: https://resocoder.com/2020/01/10/flutter-zero-boilerplate-router-with-auto-route-flutter-navigation-tutorial/

Step-1: Add needed dependency in pubspec.yaml

## pubspec.yaml
dependencies:
  flutter:
    sdk: flutter
  auto_route: ^0.2.1

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner:
  auto_route_generator: ^0.2.1+3

Step-2: Create the following dart file

  ##routes/router.dart
@autoRouter
class $Router {
  @initial
  InitialPage initialPage;
  SecondPage secondPage;
  ThirdPage thirdPage;
}
Step-3: Plugging the router into flutter (by using the following command in flutter terminal)

flutter pub run build_runner watch --delete-conflicting-outputs

Step-4: Plug all routes to the Material app

Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: Router.initialPage,
      onGenerateRoute: Router.onGenerateRoute,
      navigatorKey: Router.navigatorKey,
    );
  }
Step-5: Add the function for tap  in Initial Page for getting action:
 navigateToSecond() {
  Router.navigator.pushNamed(Router.secondPage);
}

************Advanced Modification********

AM-1: Pass one arguments during navigation
Make required constructor and follow step-3 again.

Step-5(Modification): Add the function for tap  in Initial Page for getting action:
 navigateToSecond() {
  Router.navigator.pushNamed(Router.secondPage,arguments: 'arguments_value');
}
AM-2: Pass more than one arguments during navigation
Make required constructor and follow step-3 again.

Step-5(Modification): Add the function for tap  in Initial Page for getting action:
 navigateToSecond() {
  Router.navigator.pushNamed(Router.secondPage,arguments: ConstructorName(argumentValueOne,argumentValueTwo,..));
}

AM-3: Add cross to Appbar left side for 2nd page
Step-2(Modification): Create the following dart file

## routes/router.dart
@autoRouter
class $Router {
  @initial
  InitialPage initialPage;
@MaterialRoute(fullscreenDialog: true)
  SecondPage secondPage;
  ThirdPage thirdPage;
}
AM-4: Add animated navigation to third page
Step-2(Modification): Create the following dart file

routes/router.dart
@autoRouter
class $Router {
  @initial
  InitialPage initialPage;
  SecondPage secondPage;
   @CustomRoute(
  transitionsBuilder: TransitionsBuilders.zoomIn,
  durationInMilliseconds: 200,
   )
  ThirdPage thirdPage;
}


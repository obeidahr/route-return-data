import 'package:flutter/material.dart';
import 'package:route_return_data/pages/home.dart';
import 'package:route_return_data/pages/second.dart';

main() => runApp(App());

class App extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.ROUTE,
      routes: {
        Home.ROUTE:(context)=> Home(),
        Second.ROUTE:(context)=> Second(),

      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:wolfy_app/HomeScreen.dart';
import 'LogInScreen.dart';

void main() => runApp(WolfyApp());

class WolfyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LogInScreen.tag: (context) => LogInScreen(),
    HomePage.tag: (context) => HomePage(),
  };
  @override
  Widget build(BuildContext context){
   return MaterialApp(
     title: 'Wolfy App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Comfortaa',
      ),
      home: LogInScreen(),
      routes: routes,
    );
  }
}
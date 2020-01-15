import 'package:flutter/material.dart';

void main() => runApp(WolfyApp());

class WolfyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wolfy App',
        home: new Scouting(),
        debugShowCheckedModeBanner: false);
  }
}

class Scouting extends StatefulWidget {
  @override
  _ScoutingState createState() => new _ScoutingState();
}

class _ScoutingState extends State<Scouting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              new Container(
                margin: EdgeInsets.only(top: 100.0, left: 25.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  '7721',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35.0,
                    fontFamily: 'Comfortaa',
                  ),
                ),
              ),
              new Container(
                margin: EdgeInsets.only(left: 25.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'UHS Wolfpack',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontFamily: 'Comfortaa',
                  ),
                ),
              ),
              new Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

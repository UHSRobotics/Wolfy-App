import 'package:flutter/material.dart';

class Scouting extends StatefulWidget {
  Scouting({Key key}) : super(key: key);
  @override
  _ScoutingState createState() => new _ScoutingState();
}

class _ScoutingState extends State<Scouting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                  'Scouting',
                  style: TextStyle(
                    color: Colors.white,
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

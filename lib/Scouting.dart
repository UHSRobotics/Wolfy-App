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
              new SizedBox(height: 50.0,),
              new SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      new Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(
                            left: 40.0, right: 40.0),
                        alignment: Alignment.center,
                        child: new Row(
                          children: <Widget>[
                            new Container(
                              height: 50.0,
                              width: 50.0,
                              child: new RaisedButton(
                                color: Colors.blue,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

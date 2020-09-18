import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(WolfyApp());

class WolfyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wolfy App',
      home: new BlueAlliance(),
    );
  }
}

class BlueAlliance extends StatefulWidget {
  @override
  _BlueAllianceState createState() => new _BlueAllianceState();
}

class _BlueAllianceState extends State<BlueAlliance> {
  Future<String> getData() async {
    var response =
        await http.get("https://www.thebluealliance.com/swagger/api_v3.json");
  }

  @override
  Widget build(BuildContext context) {
    return null;
  }
}

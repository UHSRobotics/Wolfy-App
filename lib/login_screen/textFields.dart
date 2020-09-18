import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  @override
  TtextFieldsState createState() => TtextFieldsState();
}

class TtextFieldsState extends State<TextFields> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 25.0, left: 40.0, right: 40.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: Colors.blue, width: 0.5, style: BorderStyle.solid),
            ),
          ),
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0),
                child: Icon(Icons.person_outline, color: Colors.blue),
              ),
              new Expanded(
                  child: TextField(
                controller: usernameController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                textAlign: TextAlign.left,
                style: new TextStyle(color: Colors.lightBlue),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Username',
                  hintStyle: TextStyle(
                      color: Colors.blueGrey, fontFamily: 'Comfortaa'),
                ),
              ))
            ],
          ),
        ),
        new Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  color: Colors.blue, width: 0.5, style: BorderStyle.solid),
            ),
          ),
          padding: const EdgeInsets.only(left: 0.0, right: 10.0),
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0),
                child: Icon(
                  Icons.lock_open,
                  color: Colors.blue,
                ),
              ),
              new Expanded(
                child: TextField(
                  controller: passwordController,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                      color: Colors.lightBlue, fontFamily: 'Comfortaa'),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.blueGrey),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

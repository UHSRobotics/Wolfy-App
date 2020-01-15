import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(WolfyApp());

class WolfyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wolfy App',
        home: new LogInScreen(),
        debugShowCheckedModeBanner: false);
  }
}

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => new _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        // Container for entire device screen
        height: MediaQuery.of(context).size.height,
        child: new SingleChildScrollView(
          child: Column(
            // Sets up column for entire screen
            children: <Widget>[
              Container(
                // Container for logo
                padding: const EdgeInsets.only(top: 125.0),
                child: Center(
                  child: Image(
                    image: AssetImage('assets/images/Wolfy-Logo.png'),
                    height: 190,
                  ),
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                  top: 25.0,
                  left: 40.0,
                  right: 40.0,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.blue,
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
                ),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                        right: 10.0,
                      ),
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.blue,
                      ),
                    ),
                    new Expanded(
                        child: TextField(
                      controller: usernameController,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.lightBlue,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                        hintStyle: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                  left: 40.0,
                  right: 40.0,
                  top: 10.0,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.blue,
                        width: 0.5,
                        style: BorderStyle.solid),
                  ),
                ),
                padding: const EdgeInsets.only(
                  left: 0.0,
                  right: 10.0,
                ),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                        right: 10.0,
                      ),
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
              new Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                  left: 40.0,
                  right: 40.0,
                  top: 30.0,
                ),
                alignment: Alignment.center,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new RaisedGradientButton(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Comfortaa',
                          ),
                        ),
                        gradient: LinearGradient(
                          colors: <Color>[Colors.blue, Colors.cyan],
                        ),
                        onPressed: () {
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                // Retrieve the text the user has entered by using the
                                // TextEditingController.
                                content: Text(
                                  'Username: ${usernameController.text},\n Password: ${passwordController.text}',
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 40.0, right: 40.0),
                alignment: Alignment.center,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new FlatButton(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                          bottom: 5.0,
                          right: 50.0,
                          left: 10.0,
                        ),
                        color: Colors.transparent,
                        onPressed: () {
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(
                                  'Please follow the instructions\nsent to your email!',
                                ),
                              );
                            },
                          );
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Forgot?",
                            style: TextStyle(
                                color: Colors.blueGrey.withOpacity(0.5),
                                fontFamily: 'Comfortaa'),
                          ),
                        ),
                      ),
                    ),
                    new Expanded(
                      child: new FlatButton(
                        padding: const EdgeInsets.only(
                            top: 5.0, bottom: 5.0, left: 0.0, right: 10.0),
                        color: Colors.transparent,
                        onPressed: () => {
                          /* ... */
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Sign Up!",
                            style: TextStyle(
                                color: Colors.blueGrey.withOpacity(0.5),
                                fontFamily: 'Comfortaa'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 130.0,
              ),
              new Container(
                alignment: Alignment.bottomCenter,
                width: 180.0,
                child: new SignInButton(
                  Buttons.GoogleDark,
                  onPressed: () => _handleSignIn(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RaisedGradientButton extends StatelessWidget {
  // Widget for creating Raised Buttons w/ gradients
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(gradient: gradient, boxShadow: [
        BoxShadow(
          color: Colors.grey[500],
          offset: Offset(0.0, 1.5),
          blurRadius: 1.5,
        ),
      ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'LogInScreen.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);
  @override
  _ProfileState createState() => new _ProfileState();
}

class _ProfileState extends State<Profile> {
  final routes = <String, WidgetBuilder>{
    LogInScreen.tag: (context) => LogInScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: const Color(0xff333333),
      body: new Stack(
        children: <Widget>[
          ClipPath(
            child: Container(color: Colors.blue),
            clipper: GetClipper(),
          ),
          Center(
            child: Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(top: 175.0),
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image:
                                NetworkImage('https://i.imgur.com/em3F611.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ])),
                SizedBox(height: 30.0),
                Text(
                  'Willie Pai',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Comfortaa',
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  '@PaisWillie',
                  style: TextStyle(
                    fontSize: 13.0,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'Comfortaa',
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 25.0),
                      height: 30.0,
                      width: 95.0,
                      child: Text(
                        "53",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comfortaa',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                        left: 40.0,
                        right: 15.0,
                      ),
                      height: 30.0,
                      width: 95.0,
                      child: Text(
                        "0",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Comfortaa',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(
                        left: 22.0,
                      ),
                      height: 30.0,
                      width: 95.0,
                      child: Text(
                        "138",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comfortaa',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.only(
                        left: 25.0,
                      ),
                      height: 30.0,
                      width: 95.0,
                      child: Text(
                        "Attendance",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comfortaa',
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.only(
                        left: 40.0,
                        right: 15.0,
                      ),
                      height: 30.0,
                      width: 95.0,
                      child: Text(
                        "Followers",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comfortaa',
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.only(left: 23.0),
                      height: 30.0,
                      width: 95.0,
                      child: Text(
                        "Following",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comfortaa',
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.0),
                Row(
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 95.0,
                      margin: EdgeInsets.only(left: 25.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        shadowColor: Colors.blueAccent,
                        color: Colors.blue,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'FRC 7721',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Comfortaa'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 38.0),
                      alignment: Alignment.center,
                      height: 30.0,
                      width: 95.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        shadowColor: Colors.blueAccent,
                        color: Colors.blue,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'President',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Comfortaa'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 40.0),
                      height: 30.0,
                      width: 95.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        shadowColor: Colors.blueAccent,
                        color: Colors.blue,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'Driver',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Comfortaa'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 75.0),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: 95.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: Colors.redAccent,
                    color: Colors.red,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(LogInScreen.tag);
                      },
                      child: Center(
                        child: Text(
                          'Log Out',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Comfortaa'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

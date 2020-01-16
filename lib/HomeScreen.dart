import 'Scouting.dart';
import 'Strategy.dart';
import 'Profile.dart';
import 'Calendar.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Key keyOne = PageStorageKey('pageOne');
  final Key keyTwo = PageStorageKey('pageTwo');
  final Key keyThree = PageStorageKey('pageThree');
  final Key keyFour = PageStorageKey('pageFour');

  int currentTab = 0;

  Scouting one;
  Strategy two;
  Calendar three;
  Profile four;

  List<Widget> pages;
  Widget currentPage;

  // List<Data> dataList;
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  void initState() {
    one = Scouting(
      key: keyOne,
    );
    two = Strategy(
      key: keyTwo,
    );
    three = Calendar(
      key: keyThree,
    );
    four = Profile(
      key: keyFour,
    );
    pages = [one, two, three, four];

    currentPage = one;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentPage,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: currentTab,
        onTap: (int index) {
          setState(() {
            currentTab = index;
            currentPage = pages[index];
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 25,
              color: Colors.grey,
            ),
            title: Text(
              'Scouting',
              style: TextStyle(
                  fontSize: 12, color: Colors.blue, fontFamily: "Comfortaa"),
            ),
            activeIcon: Icon(
              Icons.search,
              size: 25,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lightbulb_outline,
              size: 25,
              color: Colors.grey,
            ),
            title: Text(
              "Strategy",
              style: TextStyle(
                  fontSize: 12, color: Colors.blue, fontFamily: "Comfortaa"),
            ),
            activeIcon: Icon(
              Icons.lightbulb_outline,
              size: 25,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              size: 25,
              color: Colors.grey,
            ),
            title: Text(
              "Calendar",
              style: TextStyle(
                  fontSize: 12, color: Colors.blue, fontFamily: "Comfortaa"),
            ),
            activeIcon: Icon(
              Icons.book,
              size: 25,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment_ind,
              size: 25,
              color: Colors.grey,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                  fontSize: 12, color: Colors.blue, fontFamily: "Comfortaa"),
            ),
            activeIcon: Icon(
              Icons.assignment_ind,
              size: 25,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
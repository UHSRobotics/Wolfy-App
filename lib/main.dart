import 'package:flutter/material.dart';
import 'dart:ui';
import 'Scouting.dart';
import 'Strategy.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Key keyOne = PageStorageKey('pageOne');
  final Key keyTwo = PageStorageKey('pageTwo');
  final Key keyThree = PageStorageKey('pageThree');
  final Key keyFour = PageStorageKey('pageFour');

  int currentTab = 0;

  Scouting one;
  Strategy two;
  PageThree three;
  PageFour four;

  List<Widget> pages;
  Widget currentPage;

  List<Data> dataList;
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  void initState() {
    dataList = [
      Data(1, false, "Example-1"),
      Data(2, false, "Example-2"),
      Data(3, false, "Example-3"),
      Data(4, false, "Example-4"),
      Data(5, false, "Example-5"),
      Data(6, false, "Example-6"),
      Data(7, false, "Example-7"),
      Data(8, false, "Example-8"),
      Data(9, false, "Example-9"),
      Data(10, false, "Example-10"),
    ];
    one = Scouting(
      key: keyOne,
    );
    two = Strategy(
      key: keyTwo,
    );
    three = PageThree(
      key: keyThree,
    );
    four = PageFour(
      key: keyFour,
    );
    pages = [one, two, three, four];

    currentPage = one;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("Persistance Example"),
      ),*/
      body: PageStorage(
        child: currentPage,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(
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
              size:20,
              color: Colors.pink,
            ),
            title: Text(
              'Scouting',
              style:TextStyle(
                fontSize:20, color: Colors.blue, fontFamily: "Comfortaa"),
              ),
            activeIcon: Icon(
              Icons.search,
              size: 20,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lightbulb_outline,
              size:20,
              color: Colors.pink,
              ),
            title: Text(
              "Strategy",
              style: TextStyle(
                fontSize:20, color: Colors.blue, fontFamily: "Comfortaa"),
              ),
              activeIcon: Icon(
                Icons.lightbulb_outline,
                size:20,
                color: Colors.blue,
              ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              size:20,
              color:Colors.pink,
              ),
            title: Text(
              "Attendance",
              style: TextStyle(
                fontSize:20, color: Colors.blue, fontFamily: "Comfortaa"),
              ), 
              activeIcon: Icon(
                Icons.book,
                size:20,
                color: Colors.blue,
              ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment_ind,
              size:20,
              color: Colors.pink,
              ),
             title: Text(
              "Profile",
              style: TextStyle(
                fontSize:20, color: Colors.blue, fontFamily:"Comfortaa"),
              ), 
              activeIcon: Icon(
                Icons.assignment_ind,
                size:20,
                color: Colors.blue,
              ),
          ),
        
        ],
      ),
    );
  }
}

//First Icon
// class PageOne extends StatefulWidget {
//   final List<Data> dataList;
//   PageOne({
//     Key key,
//     this.dataList,
//   }) : super(key: key);

//   @override
//   PageOneState createState() => PageOneState();
// }

// class PageOneState extends State<PageOne> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: widget.dataList.length,
//         itemBuilder: (context, index) {
//           return ExpansionTile(
//             key: PageStorageKey('${widget.dataList[index].id}'),
//             title: Text(widget.dataList[index].title),
//             // onExpansionChanged: (b) => setState(() {
//             //       widget.dataList[index].expanded = b;
//             //       PageStorage.of(context).writeState(context, b,
//             //           identifier: ValueKey(
//             //             '${widget.dataList[index].id}',
//             //           ));
//             //     }),
//             // initiallyExpanded: widget.dataList[index].expanded,
//             //  PageStorage.of(context).readState(
//             //           context,
//             //           identifier: ValueKey(
//             //             '${widget.dataList[index].id}',
//             //           ),
//             //         ) ??
//             //     false,
//             children: <Widget>[
//               Container(
//                 color: index % 2 == 0 ? Colors.orange : Colors.limeAccent,
//                 height: 100.0,
//               ),
//             ],
//           );
//         });
//   }
// }



//Second Icon
// class PageTwo extends StatefulWidget {
//   PageTwo({Key key}) : super(key: key);

//   @override
//   PageTwoState createState() => PageTwoState();
// }

// class PageTwoState extends State<PageTwo> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemExtent: 250.0,
//       itemBuilder: (context, index) => Container(
//             padding: EdgeInsets.all(10.0),
//             child: Material(
//               elevation: 4.0,
//               borderRadius: BorderRadius.circular(5.0),
//               color: index % 2 == 0 ? Colors.cyan : Colors.deepOrange,
//               child: Center(
//                 child: Text(index.toString()),
//               ),
//             ),
//           ),
//     );
//   }
// }

//Third Icon 
class PageThree extends StatefulWidget{
  PageThree({Key key}) : super(key: key);

  @override
  PageThreeState createState() => PageThreeState();
}
class PageThreeState extends State<PageThree>{
  @override

  Widget build(BuildContext context){
    return ListView.builder(
       itemExtent: 250.0,
      itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(10.0),
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(5.0),
              color: index % 2 == 0 ? Colors.cyan : Colors.deepOrange,
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          ),
    );
  }
}

//Page Four
class PageFour extends StatefulWidget{
  PageFour({Key key}) : super(key: key);

  @override
  PageFourState createState() => PageFourState();
}

class PageFourState extends State<PageFour>{
  @override

  Widget build(BuildContext context){
    return ListView.builder(
       itemExtent: 250.0,
      itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(10.0),
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(5.0),
              color: index % 2 == 0 ? Colors.cyan : Colors.deepOrange,
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          ),
    );
  }
}

class Data {
  final int id;
  bool expanded;
  final String title;
  Data(this.id, this.expanded, this.title);
}

/*
class Strategy extends StatefulWidget {
  Strategy({Key key}) : super(key: key);

  @override
  _StrategyState createState() => new _StrategyState();
}

class _StrategyState extends State<Strategy> {
  final _offsets = <Offset>[];
  Offset _robotOneStart, _robotTwoStart, _robotThreeStart;

  int _robotNumber = 1;

  void setStart(int num, Offset offset) {
    if (num == 1)
      _robotOneStart = offset;
    else if (num == 2)
      _robotTwoStart = offset;
    else if (num == 3) _robotThreeStart = offset;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // decoration: BoxDecoration(
          // image: DecorationImage(
          //     image: AssetImage("assets/images/Field 2020 - Blue Side.png"),
          //     alignment: Alignment.bottomCenter,
          //     fit: BoxFit.contain,
          //     ),
        // ),
        child: GestureDetector(
          onPanStart: (details) {
            print("globalPosition: ${details.globalPosition}");
            setState(
              () {
                if (details.globalPosition.dx <= 16.5) {
                  _offsets.clear();
                  _robotOneStart = null;
                  _robotTwoStart = null;
                  _robotThreeStart = null;
                  _robotNumber = 0;
                }
                else if (_robotNumber <= 3) {
                  _offsets.add(details.globalPosition);
                  setStart(_robotNumber, details.globalPosition);
                }
              },
            );
          },
          onPanUpdate: (details) {
            setState(
              () {
                if (_robotNumber <= 3) {
                  _offsets.add(details.globalPosition);
                }
              },
            );
          },
          onPanEnd: (details) {
            setState(
              () {
                if (_robotNumber <= 3) {
                  _offsets.add(null);
                  _robotNumber++;
                }
              },
            );
          },
          child: Center(
            child: CustomPaint(
              painter: DrawPath(
                _offsets,
                _robotOneStart,
                _robotTwoStart,
                _robotThreeStart,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DrawPath extends CustomPainter {
  final offsets;
  final robotOneStart, robotTwoStart, robotThreeStart;

  DrawPath(
    this.offsets,
    this.robotOneStart,
    this.robotTwoStart,
    this.robotThreeStart,
  ) : super();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..isAntiAlias = true
      ..strokeWidth = 3.0;
    final robotOnePaint = Paint()
      ..color = Colors.red
      ..isAntiAlias = true
      ..strokeWidth = 3.0;
    final robotTwoPaint = Paint()
      ..color = Colors.blue
      ..isAntiAlias = true
      ..strokeWidth = 3.0;
    final robotThreePaint = Paint()
      ..color = Colors.green
      ..isAntiAlias = true
      ..strokeWidth = 3.0;
    for (var i = 0; i < offsets.length - 1; i++) {
      if (offsets[i] != null && offsets[i + 1] != null)
        canvas.drawLine(
          offsets[i],
          offsets[i + 1],
          paint,
        );
      else if (offsets[i] == null && offsets[i + 1] == null)
        canvas.drawPoints(
          PointMode.points,
          offsets[i],
          paint,
        );
    }
    if (robotOneStart != null) {
      final left = robotOneStart.dx - 15;
      final top = robotOneStart.dy - 15;
      final right = robotOneStart.dx + 15;
      final bottom = robotOneStart.dy + 15;
      final rect = Rect.fromLTRB(left, top, right, bottom);
      canvas.drawOval(rect, robotOnePaint);
    }
    if (robotTwoStart != null) {
      final left = robotTwoStart.dx - 15;
      final top = robotTwoStart.dy - 15;
      final right = robotTwoStart.dx + 15;
      final bottom = robotTwoStart.dy + 15;
      final rect = Rect.fromLTRB(left, top, right, bottom);
      canvas.drawOval(rect, robotTwoPaint);
    }
    if (robotThreeStart != null) {
      final left = robotThreeStart.dx - 15;
      final top = robotThreeStart.dy - 15;
      final right = robotThreeStart.dx + 15;
      final bottom = robotThreeStart.dy + 15;
      final rect = Rect.fromLTRB(left, top, right, bottom);
      canvas.drawOval(rect, robotThreePaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter old) => true;
}
*/
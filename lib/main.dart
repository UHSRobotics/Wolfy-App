import 'package:flutter/material.dart';
import 'dart:ui';
import 'Scouting.dart';
import 'Strategy.dart';
import 'Profile.dart';

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
  Profile four;

  List<Widget> pages;
  Widget currentPage;

  // List<Data> dataList;
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  void initState() {
    // dataList = [
    //   Data(1, false, "Example-1"),
    //   Data(2, false, "Example-2"),
    //   Data(3, false, "Example-3"),
    //   Data(4, false, "Example-4"),
    //   Data(5, false, "Example-5"),
    //   Data(6, false, "Example-6"),
    //   Data(7, false, "Example-7"),
    //   Data(8, false, "Example-8"),
    //   Data(9, false, "Example-9"),
    //   Data(10, false, "Example-10"),
    // ];
    one = Scouting(
      key: keyOne,
    );
    two = Strategy(
      key: keyTwo,
    );
    three = PageThree(
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

// class PageFour extends StatefulWidget{
//   PageFour({Key key}) : super(key: key);

//   @override
//   PageFourState createState() => PageFourState();
// }

// class PageFourState extends State<PageFour>{
//   @override

//   Widget build(BuildContext context){
//     return ListView.builder(
//        itemExtent: 250.0,
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

// class Data {
//   final int id;
//   bool expanded;
//   final String title;
//   Data(this.id, this.expanded, this.title);
// }

import 'package:flutter/material.dart';

void main() {
  runApp(WolfyApp());
}

class WolfyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wolfy App',
      home: new _MyApp(),
    );
  }
}

// class _Steps {
//   static int numStrategy = 0;
//   int strategyNumber;

//   Steps() {
//     numStrategy++;
//     strategyNumber = numStrategy;
//   }

//   static int getNumStrategy() => numStrategy;
//   int getStrategyNumber() => strategyNumber;
//   void setStrategyNumber(int number) => strategyNumber = number;
// }

// class Strategy extends StatefulWidget {
//   @override
//   _StrategyState createState() => _StrategyState();
// }

// class _StrategyState extends State<Strategy> {
//   @override
//   Widget build(BuildContext context) {
//     return Text('Hello World!');
//   }
// }

class GridRow extends StatelessWidget {
  final int rowNum;

  GridRow({@required this.rowNum});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27.0,
      alignment: Alignment.bottomCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Box(
            rowNum: this.rowNum,
            columnNum: 0,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 1,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 2,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 3,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 4,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 5,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 6,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 7,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 8,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 9,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 10,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 11,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 12,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 13,
          ),
          new Box(
            rowNum: this.rowNum,
            columnNum: 14,
          ),
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  final int rowNum;
  final int columnNum;
  Box({
    @required this.rowNum,
    @required this.columnNum,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        width: 27.0,
        // margin: const EdgeInsets.all(1.0),
        color: Colors.transparent,
        /* Print coordinates of each grid box */
        // child: new Text(
        //   "$rowNum, $columnNum",
        //   style: TextStyle(
        //       color: Colors.white, fontSize: 8.0, fontFamily: 'Comfortaa'),
        // ),
      ),
      onPanUpdate: (details) {
        print('Box: row $rowNum, column $columnNum');
        print('${details.globalPosition.dx}, ${details.globalPosition.dy}');
      },
    );
  }
}

// x: 2.5 y: 304.25

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Field.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.symmetric(vertical: 135.0),
            ),
            new GridRow(rowNum: 0),
            new GridRow(rowNum: 1),
            new GridRow(rowNum: 2),
            new GridRow(rowNum: 3),
            new GridRow(rowNum: 4),
            new GridRow(rowNum: 5),
            new GridRow(rowNum: 6),
            new GridRow(rowNum: 7),
            new GridRow(rowNum: 8),
            new GridRow(rowNum: 9),
            new GridRow(rowNum: 10),
            new GridRow(rowNum: 11),
            new GridRow(rowNum: 12),
            new GridRow(rowNum: 13),
            new GridRow(rowNum: 14),
            new GridRow(rowNum: 15),
            new GridRow(rowNum: 16),
          ],
        ),
      ),
    );
  }
}

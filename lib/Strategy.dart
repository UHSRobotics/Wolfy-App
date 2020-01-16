import 'dart:ui';
import 'package:flutter/material.dart';

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
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Field 2020 - Blue Side.png"),
              alignment: Alignment.bottomCenter,
              fit: BoxFit.contain,
              ),
        ),
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

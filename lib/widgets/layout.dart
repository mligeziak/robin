import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final String title;
  final Widget child;

  Layout({@required this.title, @required this.child});

  Widget build(context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 500.0,
                  color: Color.fromRGBO(70, 204, 219, 1.0),
                  transform: Matrix4.skewY(0.2),
                ),
                Container(
                  height: 450.0,
                  color: Color.fromRGBO(46, 165, 165, 1.0),
                  transform: Matrix4.skewY(0.2),
                ),
              ],
            ),
            top: -200.0,
            left: 0.0,
            right: 0.0,
          ),
          Positioned(
            child: Column(
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.only(bottom: 25.0, left: 30.0, right: 30.0),
                  alignment: Alignment(-1.0, 0.0),
                  child: Text(
                    this.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                this.child,
              ],
            ),
            top: 40.0,
            left: 0.0,
            right: 0.0,
          ),
        ],
      ),
    );
  }
}

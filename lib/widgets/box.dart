import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Widget child;

  Box({@required this.child});

  Widget build(context) {
    return Container(
      alignment: Alignment(-1.0, -1.0),
      child: this.child,
      margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(69, 91, 99, 0.1),
            blurRadius: 16.0,
          ),
        ],
      ),
    );
  }
}

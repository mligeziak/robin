import 'package:flutter/material.dart';
import '../widgets/layout.dart';
import '../widgets/box.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Layout(
        title: 'Dashboard',
        child: Box(
          child: Text('Content'),
        ),
      ),
    );
  }
}

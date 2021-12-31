import 'package:flutter/material.dart';

import 'Home/Home.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int day = 330;
    String name = "shanawaz";
    double pi = 3.14;
    return MaterialApp(home: Home());
  }
}

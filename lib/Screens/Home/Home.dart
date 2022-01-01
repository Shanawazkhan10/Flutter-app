import 'package:demoflutter/Screens/Pages/Account.dart';
import 'package:demoflutter/Screens/Pages/Homepage.dart';
import 'package:demoflutter/Screens/Pages/Likes.dart';
import 'package:demoflutter/Screens/Pages/Reels.dart';
import 'package:demoflutter/Screens/Pages/Search.dart';
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  // const Home({Key? key}) : super(key: key);

  // @override
  // _HomeState createState() => _HomeState();
  int _seleectedIndex = 0;

  void _selectIndex(int index) {
    setState(() {});
    _seleectedIndex = index;
  }

  final List<Widget> _children = [
    Homepage(),
    Search(),
    Reels(),
    Likes(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF151026);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Instagram"),
      //   backgroundColor: Colors.white,
      // ),
      body: _children[_seleectedIndex],
      // drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _seleectedIndex,
        onTap: _selectIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_call_outlined), label: "video"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "like"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "video"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.favorite_border), label: "Likes"),
          // BottomNavigationBarItem(icon: Image.asset("./"), label: "username")
        ],
      ),
    );
  }
}

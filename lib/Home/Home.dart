import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halo"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome Home"),
        ),
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}

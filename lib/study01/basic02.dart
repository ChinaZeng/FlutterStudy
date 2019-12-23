import 'package:flutter/material.dart';



//Scaffold的基本使用
class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: null,
          tooltip: "menu",
        ),
        title: Text("num 2 title"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
            tooltip: "search",
          )
        ],
      ),
      body: Center(
        child: Text("num 2 content"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: "add",
        onPressed: null,
      ),
    );
  }
}

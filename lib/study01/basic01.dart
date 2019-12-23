//https://flutter.dev/docs/development/ui/widgets-intro

import 'package:flutter/material.dart';

//一个简单的Scaffold自定义
class MyAppBar extends StatelessWidget {
  //{} 可选命名参数  []任选位置参数
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.red),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigation menu",
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: null,
          )
        ],
      ),
    );
  }
}

//  需要用MaterialApp包裹，因为用到了主题
class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text("first app title",
                style: Theme.of(context).primaryTextTheme.title),
          ),
          Expanded(
            child: Center(
              child: Text("center centent"),
            ),
          ),
        ],
      ),
    );
  }
}

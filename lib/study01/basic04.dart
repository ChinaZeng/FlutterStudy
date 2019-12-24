import 'package:flutter/material.dart';

//处理基本的状态改变
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  @override
  void initState() {
    print("initState");
    super.initState();
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    print("setState");
    super.setState(fn);
  }

  void _change() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: _change,
          child: Text("Count:$_count"),
        )
      ],
    );
  }
}

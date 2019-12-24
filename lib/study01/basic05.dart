import 'package:flutter/material.dart';

//处理稍微复杂的状态改变
class CounterDisplay extends StatelessWidget {
  final int count;

  CounterDisplay({this.count}) {
    print("CounterDisplay");
  }

  @override
  Widget build(BuildContext context) {
    print("CounterDisplay build");
    return Text("Count: $count");
  }
}

class CounterIncrementor extends StatelessWidget {
  final VoidCallback onPressed;

  CounterIncrementor({this.onPressed}) {
    print("CounterIncrementor");
  }

  @override
  Widget build(BuildContext context) {
    print("CounterIncrementor build");
    return RaisedButton(
      onPressed: onPressed,
      child: Text("click_add"),
    );
  }
}

class Counter05 extends StatefulWidget {
  State<StatefulWidget> createState() => _CounterState05();
}

class _CounterState05 extends State {
  int _count = 0;

  void _onPressed() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("_CounterState05 build");
    //set state之后会全部重建  CounterIncrementor,CounterDisplay会重新初始化,build
    return Row(children: <Widget>[
      CounterIncrementor(
        onPressed: _onPressed,
      ),
      CounterDisplay(
        count: _count,
      ),
    ]);
  }
}

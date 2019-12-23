import 'package:flutter/material.dart';

//处理基本的手势操作
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("onTap");
      },
      onDoubleTap: () {
        print("onDoubleTap");
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightBlue,
        ),
        child: Center(
          child: Text("GestureDetector center button"),
        ),
      ),
    );
  }
}

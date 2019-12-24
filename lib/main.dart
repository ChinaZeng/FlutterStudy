import 'package:flutter/material.dart';
import 'package:flutter_study/study01/basic01.dart';
import 'package:flutter_study/study01/basic02.dart';
import 'package:flutter_study/study01/basic03.dart';
import 'package:flutter_study/study01/basic04.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //basic01  一个简单的Scaffold自定义
//      home: MyScaffold(),
      //basic02  Scaffold的基本使用
//      home: TutorialHome(),R®
      //basic03  处理基本的手势操作
//      home: MyButton(),
      //basic 04 处理基本的状态改变
      home: Counter(),
    );
  }
}

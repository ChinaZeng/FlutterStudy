import 'package:flutter/material.dart';
import 'package:flutter_study/study01/basic01.dart';
import 'package:flutter_study/study01/basic02.dart';
import 'package:flutter_study/study01/basic03.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //basic01
//      home: MyScaffold(),
      //basic02
//      home: TutorialHome(),
      //basic03
      home: MyButton(),
    );
  }
}

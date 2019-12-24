import 'package:flutter/material.dart';
import 'package:flutter_study/study01/basic01.dart';
import 'package:flutter_study/study01/basic02.dart';
import 'package:flutter_study/study01/basic03.dart';
import 'package:flutter_study/study01/basic04.dart';
import 'package:flutter_study/study01/basic05.dart';
import 'package:flutter_study/study01/basic06.dart';

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
//      home: Counter(),
      //basic 05 处理稍微复杂的状态改变
//    home: Counter05(),
      //basic 06 假设的购物应用程序显示要出售的各种产品，并维护打算购买的购物车。
      home: ShoppingList(
        products: <Product>[
          Product(name: 'Eggs'),
          Product(name: 'Flour'),
          Product(name: 'Chocolate chips')
        ],
      ),
    );
  }
}

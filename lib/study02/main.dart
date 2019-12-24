import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            image,
            titleSection,
            actions,
            textSection,
          ],
        ),
      ),
    );
  }

//标题栏
  Widget titleSection = Container(
//  decoration: BoxDecoration(color: Colors.green),
    padding: const EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            //设置从左边开始展示
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Oeschinen Lake Campground",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Kandersteg, Switzerland",
                  style: TextStyle(color: Colors.grey[500]),
                ),
              )
            ],
          ),
        ),
        Icon(Icons.star, color: Colors.red),
        Text(
          "41",
          style: TextStyle(fontSize: 20.0),
        )
      ],
    ),
  );

//actions
  Widget actions = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Action(iconData: Icons.call, title: "CALL", color: Colors.blue),
      Action(iconData: Icons.near_me, title: "ROUTE", color: Colors.blue),
      Action(iconData: Icons.share, title: "SAHRE", color: Colors.blue)
    ],
  );

//文字
  Widget textSection = Padding(
    padding: const EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );

//图片
  Widget image = Image.asset(
    "assets/images/lake.jpg",
    width: 600,
    height: 240,
    fit: BoxFit.fill,
  );
}

//按钮
class Action extends StatelessWidget {
  final IconData iconData;
  final String title;
  final Color color;

  Action({Key key, this.iconData, this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          iconData,
          color: color,
        ),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}

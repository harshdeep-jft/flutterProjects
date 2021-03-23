// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star,color: Colors.yellow,),
        Icon(Icons.star,color: Colors.yellow,),
        Icon(Icons.star,color: Colors.yellow,),
        Icon(Icons.star),
        Icon(Icons.star),

      ],
    );
    var textStyle = TextStyle(fontWeight: FontWeight.w900);
    final ratings = Container(
      padding: EdgeInsets.all(20.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          stars,
          Text('170 Reviews',style: textStyle)
        ],
      ),
    );

    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height:2
    );

    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                Text('PREP:'),
                Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                Text('COOK:'),
                Text('1 Hour'),],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                Text('FEED:'),
                Text('4-5'),
              ],
            )
          ],
        ),
      )
    );

    final titleText = Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
      child: Text("Strawberry Pavlova",
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent,
            letterSpacing: 1,
          ),
        ),
    );

    final subTitle = Text(''
        'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova.'
        ' It has a crisp crust and soft, light inside,'
        ' usually topped with fruit and whipped cream.'
        ' The name is pronounced /pævˈloʊvə/, or like the name of the dancer, which was /ˈpɑːvləvə/.',
            style: TextStyle(
              fontSize: 24,
              color: Colors.grey,
            ),
           );

    final leftColumn = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );


    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
      title: 'Startup Name Generator',
      home:Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
              height: 600,
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width:500,
                      child: leftColumn,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                     width: 250,
                     height: 250,
                     child: Image.network('https://cdn.pixabay.com/photo/2018/08/05/13/16/dessert-3585584_960_720.jpg'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}










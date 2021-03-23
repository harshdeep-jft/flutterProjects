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


    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      title: 'Startup Name Generator',
      home:Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.stars),label: "Favourite",),
          // BottomNavigationBarItem(icon: Icon(Icons.add_circle_sharp),label:"Add"),
          BottomNavigationBarItem(icon: Icon(Icons.place_sharp),label:"Place"),
          BottomNavigationBarItem(icon: Icon(Icons.mail),label:"Mail"),
        ],),
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: _buildList()
      ),
    );
  }
}


// GlobalKey _navigator() => Icon((Icons.arrow_forward))



Widget _buildList() => ListView(
  children: [
    _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
    _tile('The Castro Theater', '429 Castro St', Icons.theaters),
    _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
    _tile('Roxie Theater', '3117 16th St', Icons.theaters),
    _tile('United Artists Stonestown Twin', '501 Buckingham Way',
        Icons.theaters),
    _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
    Divider(),
    _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
    _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
    _tile(
        'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
    _tile('La Ciccia', '291 30th St', Icons.restaurant),
  ],
);

ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
  title: Text(title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      )),
  subtitle: Text(subtitle),
  leading: Icon(Icons.stars_sharp),
  trailing: Icon(
    icon,
    color: Colors.blue[500],
  ),
);







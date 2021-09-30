import 'package:flutter/material.dart';
//import 'package:rive/rive.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFavourite Manga',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.lock_outline),
          titleSpacing: -10,
          title: Text('arf_zkwn'),
          actions: <Widget>[
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.add_box_outlined),
            ),
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.settings),
            )
          ],
        ),
      ),
    );
  }
}


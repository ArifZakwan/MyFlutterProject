import 'package:flutter/material.dart';
//import 'package:rive/rive.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFavourite Manga',
      home: Scaffold(
        backgroundColor: Colors.black,
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
              icon: Icon(Icons.menu),
            )
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: [ 
                CircleAvatar(
                backgroundImage: AssetImage('assets/kimetsu_no_yaiba.jpg'),
                radius: 30,
            ), ]
            ),
            Column(
              children: [
                Text('5', style: TextStyle(color: Colors.white, fontSize: 20),), 
                Text('Posts', style: TextStyle(color: Colors.white),)
              ],
            ),
            Column(
              children: [
                Text('5', style: TextStyle(color: Colors.white, fontSize: 20),), 
                Text('Followers', style: TextStyle(color: Colors.white),)
              ],
            ),
            Column(
              children: [
                Text('1726', style: TextStyle(color: Colors.white, fontSize: 20),), 
                Text('Following', style: TextStyle(color: Colors.white),)
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home_outlined, 
                color: Colors.white,
                size: 30,
              ),
              Icon(
                Icons.search, 
                color: Colors.white,
                size: 30,
              ),
              Icon(
                Icons.movie_outlined, 
                color: Colors.white,
                size: 30,
              ),
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: 30,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/kimetsu_no_yaiba.jpg'),
                radius: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}

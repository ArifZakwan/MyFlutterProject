import 'dart:ui';
import 'package:flutter/material.dart';
//import 'package:rive/rive.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  Widget firstSection = Container(
    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/kimetsu_no_yaiba.jpg'),
            radius: 50,
          ),
        ]),
        Column(
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0)),
            Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'Posts',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Column(
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0)),
            Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'Followers',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        Column(
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0)),
            Text(
              '1726',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'Following',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    ),
  );

  Widget secondSection = Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'AfZn',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            Text(
              'asgrdegr',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'asrghsdihogiughfghdfjgdyfjddh',
              style: TextStyle(color: Colors.white),
            ),
          ]),
        ],
      ));

  Widget thirdSection = Container(
    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Center(
      child: Text(
        'Edit Profile',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );

  Widget fourthSection = Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Story Highlights',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            Text(
              'Keep your favourite stories on your profile',
              style: TextStyle(color: Colors.white),
            ),
          ]),
        ],
      ));

  Widget fifthSection = Container(
    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
    child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Column(children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/shingeki_no_kyojin.jpg'),
              radius: 30,
            ),
            Text(
              'sgsdgsg',
              style: TextStyle(color: Colors.white),
            ),
          ]),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Column(children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/shingeki_no_kyojin.jpg'),
              radius: 30,
            ),
            Text(
              'sgsdgsg',
              style: TextStyle(color: Colors.white),
            ),
          ]),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Column(children: [
            CircleAvatar(
              child: Icon(Icons.add_circle_outline),
              backgroundColor: Colors.black,
              radius: 30,
            ),
            Text(
              'New',
              style: TextStyle(color: Colors.white),
            ),
          ]),
        ),
      ]),
    ]),
  );

  Widget sixthSection = Container(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Icon(
              Icons.grid_3x3_outlined,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
          ),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: ListView(
          children: [
            firstSection,
            secondSection,
            thirdSection,
            fourthSection,
            fifthSection,
            sixthSection,
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

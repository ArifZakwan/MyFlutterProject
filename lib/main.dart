import 'package:flutter/material.dart';
//import 'package:rive/rive.dart';

void main() => runApp(MyApp());

class Manga {
  final String mangaTitle;
  final String genre;
  final String author;
  final String chapter;
  final String status;
  final String image;
  Manga(this.mangaTitle, this.genre, this.author, this.chapter, this.status,
      this.image);

  static List<Manga> getMangas() {
    List<Manga> info = <Manga>[];
    info.add(Manga(
        "Shingeki No Kyojin",
        "Action, Drama, Fantasy, Historical, Horror, Mystery, Shounen, Tragedy.",
        "Isayama Hajime",
        "Chapter 139",
        "Finished",
        "shingeki_no_kyojin.jpg"));
    info.add(Manga(
        "Kimetsu No Yaiba",
        "Action, Adventure, Fantasy, Historical, Shounen.",
        "Koyoharu Gotouge",
        "Chapter 206",
        "Finished",
        "kimetsu_no_yaiba.jpg"));
    return info;
  }
}

class Home {
  final String titleName;

  Home(this.titleName);

  static List<Home> getHome() {
    List<Home> name = <Home>[];
    name.add(Home(
      "See My Favourite Manga",
    ));
    return name;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFavourite Manga',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final name = Home.getHome();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Portfolio"),
        centerTitle: true,
      ),
    );
  }
}

class ListMangaPage extends StatelessWidget {
  ListMangaPage({Key? key}) : super(key: key);
  final info = Manga.getMangas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Favourite Manga List")),
        body: ListView.builder(
          itemCount: info.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: MangaBox(item: info[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MangaPage(item: info[index]),
                  ),
                );
              },
            );
          },
        )
      );
  }
}

class MangaPage extends StatelessWidget {
  MangaPage({Key? key, required this.item}) : super(key: key);
  final Manga item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.item.mangaTitle),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  "assets/" + this.item.image,
                  alignment: Alignment.center,
                ),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(this.item.mangaTitle,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(this.item.genre),
                            Text(this.item.author),
                            Text(this.item.chapter),
                            Text(this.item.status),
                          ],
                        )))
              ]),
        ),
      ),
    );
  }
}

class MangaBox extends StatelessWidget {
  MangaBox({Key? key, required this.item}) : super(key: key);
  final Manga item;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 140,
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("assets/" + this.item.image),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(this.item.mangaTitle,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(this.item.genre),
                            Text(this.item.author),
                            Text(this.item.chapter),
                            Text(this.item.status),
                          ],
                        )))
              ]),
        ));
  }
}

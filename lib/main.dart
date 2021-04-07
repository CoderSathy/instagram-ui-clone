import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:ui_clone_social_media/stories-page.dart';

import 'messanger-page.dart';

double WIDTH;
double HEIGHT;
void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.blueAccent,
    ),
    home: BaseApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class BaseApp extends StatefulWidget {
  @override
  _BaseAppState createState() => _BaseAppState();
}

class _BaseAppState extends State<BaseApp> {
  @override
  Widget build(BuildContext context) {


    HEIGHT = MediaQuery. of(context). size. height;
    return  Scaffold(
      body: Container(height: HEIGHT - 50,child: MyApp()),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
            ),
          ],
        ),
        child: BottomNavigationBar(
          iconSize: 20,
          selectedFontSize: 1.0,
          unselectedFontSize: 1.0,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.search, color: Colors.black),
              title: new Text('Search'),
            ),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.plusSquare, color: Colors.black),
                title: Text('Profile')),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.shoppingBag, color: Colors.black),
                title: Text('Profile')),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundImage: AssetImage('assets/0.jpeg'),
                  ),
                ),
                title: Text('Profile')),
          ],
        ),
      ),
    );
  }
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery. of(context). size. width;
    WIDTH = width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.camera_alt_outlined,
          size: 30,
          color: Colors.black,
        ),
        title: Image.asset(
          "assets/instagram.png",
          width: 130,
        ),
        actions: [
          Badge(
            position: BadgePosition.topEnd(top: 0, end: 3),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeContent: Text(
              "3",
              style: TextStyle(color: Colors.white),
            ),
            child: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.facebookMessenger,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MessangerPage()));
                }),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:5),
          child: Column(
            children: [ _slidingDisplay(), Divider(), _posts()],
          ),
        ),
      ),
    );
  }

  Widget _slidingDisplay() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _circleCardTwo("0.jpeg", "Your Story"),
          _circleCard("1.jpg", "Shyam"),
          _circleCard("2.jpg", "Raju Kum.."),
          _circleCard("3.jpg", "Maya De.."),
          _circleCard("4.jpg", "Tanmay"),
          _circleCard("5.jpeg", "Devi")
        ],
      ),
    );
  }

  Widget _circleCard(image, name) {
    double radius = 32;
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MoreStories()));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            CircleAvatar(
              radius: radius + 4,
              backgroundColor: Colors.deepOrange,
              child: CircleAvatar(
                radius: radius + 2,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: radius,
                  backgroundImage: AssetImage('assets/$image'),
                ),
              ),
            ),
            Text(name)
          ],
        ),
      ),
    );
  }

  Widget _posts() {
    return Column(
      children: [
        //<b>sanam_rae </b>Chiya banau nu kya inspirational youth vaneko hola jabo chiya 😂😂
        _postCard(
            "assets/0.jpeg",
            "Sulav Parajuli",
            "assets/1.jpg",
            "assets/1.jpg",
            "hero_alom",
            "12",
            "Hello this is test photo ",
            """<>sanam_rae </b>Chiya banau nu kya inspirational youth vaneko hola jabo chiya 😂😂""",
            "22 MINUTES AGO"),
        _postCard(
            "assets/1.jpg",
            "hero_alom",
            "assets/3.jpg",
            "assets/3.jpg",
            "hero_alom",
            "12",
            "Hero Alom is back ",
            """<b>hero_alom_2 </b>Really! I think I am front not back haha 😂😂""",
            "22 MINUTES AGO")
      ],
    );
  }

  Widget _postCard(image, name, thumbnail, likedByImage, likedByName,
      othersCount, excerpt, comment, time) {
    double radius = 20;
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: radius + 4,
                    backgroundColor: Colors.deepOrange,
                    child: CircleAvatar(
                      radius: radius + 2,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: radius,
                        backgroundImage: AssetImage(image),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ],
              ),
              GestureDetector(onTap: (){
                showBarModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    height: 300,
                    child: Column(
                      children: [
                        ListTile(title:  Text("Report..."),),
                        ListTile(title:    Text("Turn on post notifications"),),
                        ListTile(title:  Text("Copy link"),),
                        ListTile(title:  Text("Share to.."),),
                        ListTile(title:    Text("Unfollow"),),
                      ],
                    ),
                  ),
                );
              },child: Icon(Icons.more_vert))
            ],
          ),
        ),
        Image.asset(thumbnail),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FaIcon(FontAwesomeIcons.heart),
                    FaIcon(FontAwesomeIcons.comment),
                    Icon(Icons.send)
                  ],
                ),
                width: 100,
              ),
              Icon(Icons.save_alt)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(likedByImage),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text("Liked by "),
                    Text(likedByName,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(" and "),
                    Text(
                      "$othersCount others",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 5, top: 0, right: 5),
            child: Row(
              children: [
                Expanded(
                  child: Html(
                    data: """<b>$name</b> $excerpt...<b>More</b>""",
                  ),
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 0, right: 5),
          child: Container(
              width: double.maxFinite,
              child: Text(
                "View all Comments",
                style: TextStyle(color: Colors.grey),
              )),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 5, top: 0, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Html(
                  data: """$comment""",
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 0, right: 5),
          child: Container(
              width: double.maxFinite,
              child: Text(
                time,
                style: TextStyle(color: Colors.grey),
              )),
        ),
        Row(
          children: [
            Container(
              width: WIDTH - 50,
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "Post a Comment"),
              ),
            ),
            Text("POST",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
          ],
        ),
      ],
    );
  }

  Widget _circleCardTwo(image, name) {
    double radius = 32;
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: radius + 4,
                backgroundColor: Colors.deepOrange,
                child: CircleAvatar(
                  radius: radius + 2,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: radius,
                    backgroundImage: AssetImage('assets/$image'),
                  ),
                ),
              ),
              Positioned(
                right: 0.0,
                bottom: 0.0,
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 12,
                    child: Icon(Icons.add,),
                  ),
                ),
              ),
            ],
          ),
          Text(name)
        ],
      ),
    );
  }

}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/MyRoutes.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl =
      "https://rukminim1.flixcart.com/image/312/312/kvfkivk0/poster/y/6/5/medium-kamado-tanjiro-anime-demon-demon-slayer-inosuke-kimetsu-original-imag8c36fdqwdrkt.jpeg?q=70";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  // ignore: prefer_const_constructors
                  accountName: Text("Yagnik"),
                  // ignore: prefer_const_constructors
                  accountEmail: Text("panchalyagnik@gmail.com"))),
          // ignore: prefer_const_constructors
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            // titleAlignment: ListTileTitleAlignment.center,
            // ignore: prefer_const_constructors
            leading: Icon(CupertinoIcons.home, color: Colors.deepPurpleAccent),
            // ignore: prefer_const_constructors
            title: Text("Home",
                textScaleFactor: 1.2,
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.deepPurpleAccent)),
          ),
          // ignore: prefer_const_constructors
          Divider(
            height:1,
            thickness: 1,
            color: Colors.deepPurpleAccent,
          ),
          // ignore: prefer_const_constructors
          ListTile(
            // titleAlignment: ListTileTitleAlignment.center,
            // ignore: prefer_const_constructors
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.deepPurpleAccent),
            // ignore: prefer_const_constructors
            title: Text("profile",
                textScaleFactor: 1.2,
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.deepPurpleAccent)),
          ),
          // ignore: prefer_const_constructors
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.deepPurpleAccent,
          ),
           // ignore: prefer_const_constructors
           ListTile(
            // titleAlignment: ListTileTitleAlignment.center,
            // ignore: prefer_const_constructors
            leading: Icon(CupertinoIcons.mail_solid,
                color: Colors.deepPurpleAccent),
            // ignore: prefer_const_constructors
            title: Text("Email me",
                textScaleFactor: 1.2,
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.deepPurpleAccent)),
          ),
          // ignore: prefer_const_constructors
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
  }
}

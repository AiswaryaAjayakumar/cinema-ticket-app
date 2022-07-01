
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/cinema.dart';
import 'package:ticket_app/screens/home.dart';
import 'package:ticket_app/screens/profile.dart';

class TabView extends StatelessWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,

            title: Text("CINE TICKET",
            style: TextStyle(
              color: Colors.brown,
              fontSize: 45
            ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(text: "Home",icon: Icon(Icons.home),),
                Tab(text: "Cinema",icon: Icon(Icons.camera_roll_rounded),),
                Tab(text: "Profile",icon: Icon(Icons.account_circle_rounded),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Home(),
              Cinema(),
              Profile()
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:ticket_app/screens/MyDrawer.dart';

class SideNav extends StatelessWidget {
  const SideNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text("CINE TICKET",
            style: TextStyle(
                color: Colors.indigo,
                fontSize: 35
            ),
          ),
        ),

        drawer: MyDrawer(),
        body: Container() ,


      ),
    );
  }
}

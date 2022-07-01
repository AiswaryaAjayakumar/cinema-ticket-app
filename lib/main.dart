import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/cinema.dart';
import 'package:ticket_app/screens/front.dart';
import 'package:ticket_app/screens/side.dart';
import 'package:ticket_app/screens/tab.dart';

void main(){
  runApp(SideNav());
}
class Ticket extends StatelessWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("CINE TICKET",
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 50
            ),

          ),
        ),
        body:TabView(),
      ),

    );
  }
}

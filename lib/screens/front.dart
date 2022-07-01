import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/cinema.dart';
import 'package:ticket_app/screens/home.dart';
import 'package:ticket_app/screens/profile.dart';

class Front extends StatefulWidget {
  const Front({Key? key}) : super(key: key);

  @override
  State<Front> createState() => _FrontState();
}

class _FrontState extends State<Front> {
  int _mycurrentindex=0;
  List pages=[Home(),Cinema(),Profile()];
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[_mycurrentindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
          _mycurrentindex=index;
            });
          },
          currentIndex: _mycurrentindex,
          type: BottomNavigationBarType.fixed,
          iconSize: 40,
          backgroundColor: Colors.deepPurple,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,
              color: Colors.lightGreenAccent,

            ),
              label: "Home",
            ),

            BottomNavigationBarItem(icon: Icon(Icons.camera_roll,
              color: Colors.greenAccent,

            ),
                label: "Cinema"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle,
              color: Colors.lightGreen,

            ),
              label: "Profile",
            )
          ],
        ),
      ),
    );
  }
}

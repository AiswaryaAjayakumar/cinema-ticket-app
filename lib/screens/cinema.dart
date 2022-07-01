import 'package:flutter/material.dart';
import 'package:ticket_app/screens/MyDrawer.dart';

class Cinema extends StatefulWidget {
  const Cinema({Key? key}) : super(key: key);

  @override
  State<Cinema> createState() => _CinemaState();
}

class _CinemaState extends State<Cinema> {
  var now=["Now Running Cinema","Now Running Cinema","Now Running Cinema","Now Running Cinema","Now Running Cinema","Now Running Cinema"];
 var film=["Heven","Vikram","John Luther","Vaashi","Charlie","Prakashan Parakkatte"];

  var theatre=["Saritha","Carnival","NK Mall","Dhanya Cinemax","Carnival cinemas","Khans"];
 var  time=[10.45,12.15,5.45,6.45,7.15,9.15];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,

          title: Text("Cinema",

              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 45
              ),
          ),
        ),
        drawer: MyDrawer(),
        body: Container(
          child: ListView.builder(
              itemCount: now.length==null ? 0 : now.length,

              itemBuilder: (context,index)
              {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.camera_roll_rounded,
                      color: Colors.brown,
                      size: 35,
                    ),

                    title: Text(now[index].toString(),
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 25
                      ),
                    ),
                    subtitle: Text("Cinema: "+film[index].toString()+"\n"+"Theatre: "+theatre[index].toString()+"\n"+"Show time: "+
                        time[index].toString(),
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 20
                      ),
                    ),
                  ),

                );
              }
          ),
        ),
      ),
    );
  }
}

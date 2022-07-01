import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ticket_app/screens/MyDrawer.dart';
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,

          title: Text("Home",
            style: TextStyle(
                color: Colors.indigo,
                fontSize: 45
            ),
          ),
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Container(

            child: GridView.builder(

                shrinkWrap: true,
                itemCount:6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context,index){
                  return Card(


                    shadowColor: Colors.grey,
                    margin: EdgeInsets.all(15),
                    color: Colors.black26,
                    child: Icon(Icons.tv,
                      color: Colors.white70,
                      size: 45,
                    ),


                  );


                }

            ),
          ),
        ),
      ),
     
    );


  }
}

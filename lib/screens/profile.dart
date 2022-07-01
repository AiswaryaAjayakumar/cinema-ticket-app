import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/MyDrawer.dart';
class Profile extends StatelessWidget {
// const Profile({Key? key}) : super(key: key);

//var name=["Arnav"];
List prf=["Arnav","Purchase History","Stream Library","Help & Support","Account & Settings","Rewards"];
List sub=["arnav@gmail.com","View all your bookings & purchases","Rented,purchases & downloaded movies","View commonly asked queries & chats","Locations,Payments,Addresses & more",
"view your rewards & unlock new one"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text("Profile",
            style: TextStyle(
                color: Colors.indigo,
                fontSize: 45
            ),
          ),
        ),
        drawer: MyDrawer(),
        body: Container(
          child: ListView.builder(
              itemCount: prf.length==null?0:prf.length,

              itemBuilder: (context,index){
                return Card(

                  color: Colors.black54,
                  child: ListTile(

                    textColor: Colors.white,

                    title: Text(prf[index].toString()),
                    subtitle: Text(sub[index].toString()),
                  ),

                );
              }

          ),
        ),
      ),
    );
  }
}

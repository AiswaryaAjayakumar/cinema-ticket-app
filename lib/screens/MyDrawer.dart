
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/cinema.dart';
import 'package:ticket_app/screens/home.dart';
import 'package:ticket_app/screens/profile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.lightGreen,
       child: ListView(

         children: [
           UserAccountsDrawerHeader(
             decoration: BoxDecoration(
               color: Colors.teal
             ),
             currentAccountPicture: CircleAvatar(
               backgroundImage: NetworkImage("https://st.depositphotos.com/1317882/2175/i/950/depositphotos_21759267-stock-photo-empty-cinema-screen-with-audience.jpg"),
             ),
               accountName: Text("The Cinema has no boundary; it is a ribbon of dream",
               style: TextStyle(
                 color: Colors.purple,
                 fontSize: 10.5
               ),
               ),
               accountEmail: Text("                                               -Orson Welles",
               style: TextStyle(
                 color: Colors.redAccent,
                 fontSize: 12
               ),
               )),

           ListTile(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
             },
             title: Text("Home",
             style: TextStyle(
               color: Colors.black87,
               fontSize: 30
             ),
             ),
             leading: Icon(Icons.home,
             color: Colors.black26,
               size: 30,

             ),
           ),
           Divider(color: Colors.white70,),
           ListTile(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Cinema()));
             },
             title: Text("Cinema",
               style: TextStyle(
                   color: Colors.black87,
                   fontSize: 30
               ),
             ),
             leading: Icon(Icons.camera_roll,
               color: Colors.black26,
               size: 30,

             ),
           ),
           Divider(color: Colors.white70,),
           ListTile(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
             },
             title: Text("Profile",
               style: TextStyle(
                   color: Colors.black87,
                   fontSize: 30
               ),
             ),
             leading: Icon(Icons.account_circle_rounded,
               color: Colors.black26,
               size: 30,

             ),
           )
         ],
       ),
    );
  }
}

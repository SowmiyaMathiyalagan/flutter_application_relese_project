import 'package:flutter/material.dart';
import 'package:flutter_application_sowmiya/navbar.dart';

class PersonalProfile extends StatelessWidget {
  const PersonalProfile({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: Text('PersonalProfile',),
       ),
       body: SafeArea(
         child:Center(
            child: Column(
               children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/image1.jpg'),
                  ),
                 Padding(
                   padding: const EdgeInsets.all(10),
                   child: Text(
                     'sowmiya M',
                     style: TextStyle(
                       fontSize: 30,
                       color: Colors.indigo.shade900,
                       fontWeight: FontWeight.bold,

                     ),

                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(
                     'Flutter Developer',
                     style: TextStyle(
                       fontSize: 30,
                         color:Colors.indigo.shade900,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                 ),

                 SizedBox(
                   height: 50,
                   width: 250,
                   child: Divider(
                     color: Colors.indigo.shade900,
                   ),
                 ),
                 Card(
                   margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                   child: ListTile(
                     leading: Icon(
                       Icons.phone,
                       color: Colors.indigo.shade900,
                     ),
                     title: Text(
                       '+91 7448973151',
                       style: TextStyle(
                         fontSize: 20,
                         color: Colors.indigo.shade900,
                         fontWeight: FontWeight.bold,

                       ),
                     ),
                   ),
                 ),
                 Card(
                   margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                   child: ListTile(
                     leading: Icon(
                       Icons.email,
                       color: Colors.indigo.shade900,
                     ),
                     title: Text(
                       'sowmiii.m@gmail.com',
                       style: TextStyle(
                         fontSize: 20,
                         color: Colors.indigo.shade900,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                 ),
                 Card(
                   margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                   child: ListTile(
                     leading: Icon(
                       Icons.location_city,
                       color: Colors.indigo.shade900,
                     ),
                     title: Text(
                       '2/16-1,\nNorth-street,\nVadaveekam.',
                       style: TextStyle(
                         fontSize: 20,
                         color: Colors.indigo.shade900,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                 ),

               ],

            ),
         ),
       ) ,


    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
   home:NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja Id card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
     floatingActionButton: FloatingActionButton(
       onPressed: () {
            setState(() {
              ninjaLevel++;
            });
       },
       child: Icon(Icons.add),
       backgroundColor: Colors.grey[800],
     ),
     body: Padding(
       padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children:<Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profilePic.jpg'),
                  radius: 40.0,
                ),
              ),
             Divider(
               height:90.0,
               color:Colors.grey,
             ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  letterSpacing: 2.0,
                ),
              ),
           SizedBox(height:5.0,),
           Text(
             'Gokul J Kurup',
             style: TextStyle(
               color: Colors.amber[200],
               fontSize: 28.0,
               letterSpacing: 2.0,
               fontWeight: FontWeight.bold,
             ),
           ),
           SizedBox(height:50.0,),
           Text(
             'Current Ninja level',
             style: TextStyle(
               color: Colors.grey,
               fontSize: 16.0,
               letterSpacing: 2.0,
             ),
           ),
           SizedBox(height:5.0,),
           Text(
             '$ninjaLevel',
             style: TextStyle(
               color: Colors.amber[200],
               fontSize: 28.0,
               letterSpacing: 2.0,
               fontWeight: FontWeight.bold,
             ),
           ),
           SizedBox(height:60.0,),
           Row(
             children:<Widget>[
               Icon(
                 Icons.email,
                 color:Colors.grey,
               ),
               SizedBox(width:15.0,),
               Text(
                   'chun-li@gmail.com',
                    style:TextStyle(
                      color:Colors.grey[400],
                      letterSpacing:1.2,

                    ),
               ),
             ],
           ),
         ],
       ),
     ),
    );
  }
}

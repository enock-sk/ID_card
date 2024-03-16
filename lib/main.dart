import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:  Text('Eno_Africa_ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[400],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){setState(() {
        level+=1;
      });},
      child: Icon(Icons.add),
      backgroundColor: Colors.grey[800],),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Center(
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/y.jpeg'),
        radius: 40,
      ),
    ),
      Divider(
        height: 90,
        color: Colors.cyan,
      ),
      Text(
        'Name',
        style: TextStyle(
          color: Colors.grey[400],
          letterSpacing: 2,

        ),
      ),
    SizedBox(height: 10,),
    Text(
      'Eno_Africa',
      style: TextStyle(
        color: Colors.amberAccent[200],
        letterSpacing: 2,
        fontSize: 28,
fontWeight: FontWeight.bold,
      ),
    ),
    SizedBox(height: 30,),
    Text(
      'Current Eno Level',
      style: TextStyle(
        color: Colors.grey[400],
        letterSpacing: 2,

      ),
    ),
    Text(
      '$level',
      style: TextStyle(
        color: Colors.amberAccent[200],
        letterSpacing: 2,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    ),
    SizedBox(height: 30,),
    Row(
      children: <Widget>[
        Icon(Icons.email,
        color: Colors.grey[400],),
          SizedBox(width: 18,),
        Text(
          'ekiplangat64@gmail.com',
          style: TextStyle(
          color: Colors.grey[400],
          fontSize: 18,
          letterSpacing: 1,
          ),
        )
  ],
),

         ],
       ),
      ),
    );
  }
}


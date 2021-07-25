import 'package:flutter/material.dart';
import 'dart:math';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
    
//   List colors = [Colors.red, Colors.green, Colors.yellow];
//   Random random = new Random();

//   int index = 0;

//   void changeIndex() {
//     setState(() => index = random.nextInt(3));
//   }
  //   return MaterialApp(
  //     home: Scaffold(
  //         backgroundColor:colors[index],
          
  //         appBar: AppBar(title: Text("Test task"),
  //         centerTitle: true,

  //         ),
  //     body: Center(
  //       child:Text("Hey, there"), 

  // ),

  //       ),
  //     );
  // }
// }
// _____
//  return MaterialApp(
//       home: Scaffold(
//       appBar: AppBar(title: Text("Test task"),
//       centerTitle: true,
//       ),
//     Home(),

//       body: Center(
//         child:Text("Hey, there"), 
//       ),
//       ),
//     );
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Test task"),centerTitle: true, backgroundColor: Colors.blue,),
        body: Home(),
        drawer: Drawer(
          child: new DrawerHeader(
            child: new Text("Some text in burger menu"),
            decoration: BoxDecoration (
                color: Colors.blue[100],),)
      ),
        ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    
    late Color color;

  @override

  void initState() {
    color = Color(0xFFFFFFFF);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Random rnd;
          rnd = new Random();
          color =  Color.fromARGB(
        rnd.nextInt(256),
        rnd.nextInt(256),
        rnd.nextInt(256),
        rnd.nextInt(256),
      );
        });
      },
      child: Container(
        color: color,
          child:Center(
          child: Text("Hi there",style: TextStyle(
            fontFamily: "Times New Roman",
            fontSize: 22,
            fontStyle: FontStyle.italic,
          ),)
        ),
      ),
    );
  }
}
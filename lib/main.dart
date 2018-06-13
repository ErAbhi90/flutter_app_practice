import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

/*
//Below is the example of stateful widget

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Home New Page"),

        ),
        body: new Center(child: new Text("Hello World")),
      ),

    );
  }
}

*/


/* Combination of Stateless and Stateful Widget example below
*
* 1. Material app base code will always remain stateless
* 2. Underscore before any variable or method or class means its private
* */

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),

    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: new Center(
        child: new Text("Hello Stateful Widget"),
      ),

    );
  }
}


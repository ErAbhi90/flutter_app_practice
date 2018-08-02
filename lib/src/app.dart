import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  // Stateless widget will not contain its own data
  //Stateful is used when we need to maintain some data

//instance variable
  int counter = 0;

  Widget build(BuildContext context) {
    return MaterialApp(

//Scaffold is a class used to implement basic material design features
        home: Scaffold(
          appBar: AppBar(
            title: Text('This is an AppBar'),
          ),


          floatingActionButton: FloatingActionButton(

            // For list of ICONS visit https://material.io/tools/icons/?style=baseline
              child: Icon(Icons.add),

// On Pressed method is mandatory in Floating Action button
              onPressed: () {
                //Implementation of Button Click Here

                setState(() {
                  counter++;
                  // print('Floating Button Clicked $counter');
                });
              }),

          //body property to display Widget below AppBar
          body: Text('This is count: $counter'),

        )
    );
  }
}

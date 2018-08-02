import 'package:flutter/material.dart';

//Creating Widget
void main(){
  var app = MaterialApp(

//Scaffold is a class used to implement basic material design features
      home: Scaffold(

        appBar: AppBar(
          title: Text('This is an AppBar'),
        ),

// On Pressed method is mandatory in Floating Action button
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              //Implementation of Button Click Here

            }),

      )
  );

  runApp(app);
}
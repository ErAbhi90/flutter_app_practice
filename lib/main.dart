import 'package:flutter/material.dart';

//Creating Widget
void main(){
  var app = MaterialApp(

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
              print('Floating Button Clicked');
            }),

      )
  );

  runApp(app);
}
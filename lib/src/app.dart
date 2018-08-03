import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

import 'models/image_model.dart';

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

  //List Variable
  List<ImageModel> images = [];

  //To fetch data Async

  void fetchImageData() async {
    //increment counter as in our Json data starts from 1 but our counter value starts from 0
    counter++;

    //To fetch data from below url and instead of loading all images at the same time we are passing counter so to fetch data one by one when button clicked
    var response = await get(
        'https://jsonplaceholder.typicode.com/photos/$counter');

    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

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

                fetchImageData;
              }),

          //body property to display Widget below AppBar
          body: Text('This is count: $counter'),

        )
    );
  }
}

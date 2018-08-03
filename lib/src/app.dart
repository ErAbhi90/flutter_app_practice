import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

import 'models/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {

  int counter = 0;
  List<ImageModel> images = [];


  //To fetch data Async
  void fetchImageData() async {
    counter++;
    var response =
    await get('https://jsonplaceholder.typicode.com/photos/$counter');
    print(json.decode(response.body));
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
            onPressed: fetchImageData,
          ),

          //body property to display Widget below AppBar
          body: ImageList(images),

        )
    );
  }
}

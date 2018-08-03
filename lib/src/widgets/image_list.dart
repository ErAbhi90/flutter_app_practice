import 'package:flutter/material.dart';

import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return displayImage(images[index]);
      },
    );
  }


  displayImage(ImageModel image) {
    //Container is used to add certain type of decorations and can only consist of one child
    Container(
        margin: EdgeInsets.all(25.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey
            )
        ),

        // Column is used for arranging multiple child in a linear vertical format if you want horizontal alignment then use Row
        child: Column(
          children: <Widget>[
            Image.network(image.url),
            Text(image.title),
          ],

        )





    );
  }
}

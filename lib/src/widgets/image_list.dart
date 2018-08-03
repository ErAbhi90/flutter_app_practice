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
    Container(
        margin: EdgeInsets.all(25.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey
            )
        ),

        child: Column(
          children: <Widget>[
            Image.network(image.url),
            Text(image.title),
          ],

        )





    );
  }
}

import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImgaeModel> listImage;
  ImageList(this.listImage);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, int index) {
        return buildImage(listImage[index]);
      },
      itemCount: listImage.length,
    );
  }

  Widget buildImage(ImgaeModel imageModel) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Image.network(imageModel.url),
    );
  }
}

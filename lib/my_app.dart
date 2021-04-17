import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import './widgets/image_list.dart';
//only one function get

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<ImgaeModel> listImages = [];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list image'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchImage,
        child: Icon(
          Icons.add,
        ),
      ),
      body: ImageList(listImages),
    );
  }

  void fetchImage() async {
    counter++;
    var response = await get(
      Uri.https('jsonplaceholder.typicode.com', 'photos/$counter'),
    );
    var imageModel = ImgaeModel.fromJson(json.decode(response.body));
    setState(() {
      listImages.add(imageModel);
    });
  }
}

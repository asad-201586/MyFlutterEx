
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyContainer());

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);
  static const String assetImagePath = "assets/images/automation_image.jpg";
  static const String netImagePath = "https://img.freepik.com/free-vector/mosque-design-white-background_1344-67.jpg?w=2000";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text("Dashboard".toUpperCase()),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          width: 200,
          height: 150,
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(top: 16),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.green,width: 1),
              //shape: BoxShape.rectangle,
              image: DecorationImage(image: AssetImage(assetImagePath))
          )
      )
    );
  }
}

MySnackbar(message,context) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}


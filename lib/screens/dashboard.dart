
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const Dashboard());

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
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
      body: Center(
        child: Column(
          children: [
            Image.asset(assetImagePath,height: 100,width: 100,fit: BoxFit.fill,),
            // Image.network(netImagePath,height: 200,width: 200,fit: BoxFit.cover),
            // Icon(Icons.person,color: Colors.blue,size: 50,),
            // IconButton(onPressed: () {MySnackbar("button clicked", context);},highlightColor: Colors.pink,iconSize: 60, icon: Icon(Icons.access_time_filled_sharp,color: Colors.red)),
            // Icon(FontAwesomeIcons.arrowUp),
            Container(
                width: 150,
                height: 150,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(top: 16),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.green,width: 1),
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(assetImagePath))
                )
            )
          ],
        )
      ),
    );
  }
}

int getNumber() {
  return Random().nextInt(100);
}

MySnackbar(message,context) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}


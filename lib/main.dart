

import 'package:flutter/material.dart';
import 'package:flutter_projects/screens/dashboard.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      color: Colors.orange,
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }

}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackbar(message,context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        titleSpacing: 16,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 8,
        backgroundColor: Colors.pink,
        actions: [
          IconButton(onPressed: (){MySnackbar("Comment", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackbar("Search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackbar("Person", context);}, icon: Icon(Icons.person)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        child: Icon(Icons.add,color: Colors.black,),
        backgroundColor: Colors.white,
        onPressed: (){MySnackbar("Hello FloatingActionButton", context);},
      ),

    );
  }
}
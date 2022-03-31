// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login_form/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo Page",
      home: Scaffold(
          // backgroundColor: Colors.limeAccent,

          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Demo Site",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          body: LogInPage()),
      //    routes: {
      //  "/LogInPage": (context) => LogInPage(),

      //   },
    );
  }
}

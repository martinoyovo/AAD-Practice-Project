import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gads_project/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.white,
          tabBarTheme: TabBarTheme(
              unselectedLabelStyle:
                  TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              labelStyle:
                  TextStyle(fontSize: 17, fontWeight: FontWeight.bold))),
      home: Menu(),
    );
  }
}

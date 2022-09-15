import 'package:flutter/material.dart';
import 'package:instagramcloneflutter/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(subtitle1: TextStyle(color: Colors.white,fontFamily: 'Aveny')),
        textTheme: TextTheme(subtitle1: TextStyle(color: Colors.black)),


      ),
      home: InstaHome(),
    );
  }
}


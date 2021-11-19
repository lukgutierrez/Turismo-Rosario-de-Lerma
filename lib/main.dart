import 'package:flutter/material.dart';
import 'package:turismorosariodelerma/src/pages/home_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {"/": (BuildContext context) => HomePage()},
    );
  }
}

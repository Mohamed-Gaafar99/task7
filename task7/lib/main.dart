import 'package:flutter/material.dart';
import 'package:task7/first_page.dart';

void main() {
  runApp(MyApp());
}class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
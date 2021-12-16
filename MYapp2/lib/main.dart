
import 'package:flutter/material.dart';
import 'package:myapp2/pages/home.dart';
import 'package:myapp2/pages/details.dart';

void main(List<String> arg) {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp ({Key? key}) :super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "computer's Today",
      home: Homepage()
    );
  }
}


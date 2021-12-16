import 'package:flutter/material.dart';

class Detailspage extends StatefulWidget {
  const Detailspage({ Key? key }) : super(key: key);

  @override
  _DetailspageState createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: ListView(
        children: [
          Text("Details Explation")
        ],
      ),
    );
  }
}
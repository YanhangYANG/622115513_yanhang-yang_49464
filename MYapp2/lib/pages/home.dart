

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapp2/pages/details.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer KnowLedge"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: FutureBuilder(
          builder: (context,snapshot){
          var data = json.decode(snapshot.data.toString());
          return ListView.builder(itemBuilder: (BuildContext context, int index){
            return MyBox(data[index]['title'], data[index]['subtitle'], data[index]['img_url']);
          },
          itemCount: data.length,);
        },
        future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
    )
        ),
    );
    
  }
}

Widget MyBox(String title, String subtitle,String img_url,){
      return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        height: 150,
        decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: NetworkImage(img_url)
          ,fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
         SizedBox(height: 20,),
         Text(subtitle,
         style: TextStyle(
           fontSize: 15,
           color: Colors.white,
           fontWeight: FontWeight.bold
         ),
         ),
         SizedBox(height: 15,),
         TextButton(
           onPressed: () {
    
            }, 
         child: Text("read more"),
         )
        ],),
      ); 
    }
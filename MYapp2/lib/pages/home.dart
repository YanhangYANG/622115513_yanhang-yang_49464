

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
        child: ListView(
        children: [
          MyBox("What are dinosaurs?",
          "A group of sauropods mainly living in the Mesozoic",
          "https://img1.baidu.com/it/u=1786928153,3097094659&fm=26&fmt=auto"),
          SizedBox(height: 20,)
          ,
          
          MyBox("What is human?",
          "The only living species of the genus Hominidae in biological classification",
          "https://img2.baidu.com/it/u=1908759568,1991906679&fm=26&fmt=auto"),
          SizedBox(height: 20,),
          MyBox("What is a robot?",
          "A machine device that performs work automatically",
          "https://img0.baidu.com/it/u=1003661357,1150682269&fm=26&fmt=auto"),
          SizedBox(height: 20,),
        ],
        ),
        ),
    );
    
  }
}

Widget MyBox(String title, String subtitle,String img_url,){
      return Container(
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
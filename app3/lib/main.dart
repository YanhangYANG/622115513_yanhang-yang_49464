import 'package:flutter/material.dart';
import 'package:app3/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 final items = List<String>.generate(1000,(i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    List mydata = ['apple','banana','papaya'];
    return Scaffold(
      appBar:AppBar(
           title: Text("622115513"),
         ) ,
         body: ListView.builder(itemBuilder: (context , index ){
           return ListTile(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage()));
             },
             leading: FlutterLogo(),
             title: Text(mydata[index]),
           );
         },
         itemCount:mydata.length ,
         )
        
      
    );
      
    
  }
}
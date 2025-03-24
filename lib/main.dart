import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Simple Profile Card',style: TextStyle(color: Colors.red,fontSize: 20),),centerTitle: true
          ,),
        body: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          child:Column(
          children: [
            CircleAvatar(
           radius: 100,
            backgroundImage: AssetImage('assets/images/profile3.webp'),
              ),
            Text('Napoleon Hill'),
            Text('Android | IOS developer'),

    ],
    ),
      ),
    ),
    );
  }
}
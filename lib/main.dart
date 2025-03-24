import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            Row(
              children: [
                Expanded(child: IconButton(onPressed:null, icon:Icon(Icons.facebook))),
                // Expanded(child: IconButton(onPressed:null, icon:Icon(Icons.twitter))),
                Expanded(child: IconButton(onPressed:null, icon:Icon(Icons.code))),
                Expanded(child: IconButton(onPressed:null, icon:Icon(Icons.camera_alt))),

              ],
            )

    ],

    ),
      ),
    ),
    );
  }
}
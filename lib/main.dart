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
        backgroundColor: Colors.grey,
        appBar: AppBar(title: Text('Simple Profile Card',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 25),),centerTitle: true
          // ,backgroundColor: Colors.grey
          ,),
        body: Container(
          padding: EdgeInsets.all(10),
          margin:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5),]
          ),

          child:Column(

            children: [
              SizedBox(
                child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/profile3.webp'),
              ),
              ),
              Text('Majokie Bolis',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              Text('Android | IOS developer',),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  IconButton(onPressed:(){
                    print("Email pressed");
                  }, icon:Icon(FontAwesomeIcons.envelope),color: Colors.blue,),
                  Text('bmajk@gmail.com',style: TextStyle(color: Colors.grey),),
                ],
              ),


              SizedBox(height: 6,),


              Text('Social links:'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed:(){
                    print("Github pressed");
                  }, icon:Icon(FontAwesomeIcons.github),color: Colors.black,),
                  IconButton(onPressed:(){
                    print("Facebook pressed");
                  }, icon:Icon(FontAwesomeIcons.facebook),color: Colors.blue,),
                  IconButton(onPressed:(){
                    print("Instagram pressed");
                  }, icon:Icon(FontAwesomeIcons.instagram),color: Colors.pink,),
                  IconButton(onPressed:(){
                    print("Twitter pressed");
                  }, icon:Icon(FontAwesomeIcons.twitter),color: Colors.black,),
                ],

              )

            ],
          )

      ),
    ),
    );
  }
}
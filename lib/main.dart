import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Counter App' ,
      home:MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

     int countNumber=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('Counter App') ,
       backgroundColor:Colors.blue , 
      ),
      body:Center(
        child:Text(countNumber.toString()) ,
      ) ,
      floatingActionButton: FloatingActionButton(
          child:Icon(Icons.add) ,
          onPressed:(){
            setState(() {
              countNumber=countNumber+1;
            });
          }
      ),
    );
  }
}



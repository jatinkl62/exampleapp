import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("login")),
     body: Center(
         child: Text("login page",style: TextStyle(fontSize: 50),)),
   );
  }

}
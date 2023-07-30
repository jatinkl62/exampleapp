import 'package:first_app/screen/Homepage.dart';
import 'package:first_app/screen/Navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shopping app",
      home: Navigation()
    );
  }

}

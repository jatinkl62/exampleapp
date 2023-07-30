import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Themepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(

        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                child: Text("themes",style: TextStyle(fontSize: 25)),
                onPressed: () {
                 Get.bottomSheet(Container(
                   margin: EdgeInsets.only(bottom: 40),
                   padding: EdgeInsets.only(bottom: 5),
                   child: Wrap(
                     children: [
                       ListTile(title: Text("light",style: TextStyle(fontSize: 20)),
                       leading: Icon(Icons.wb_sunny_outlined),
                         onTap: (){
                         Get.changeTheme(ThemeData.light());
                         },

                       ),
                       ListTile(title: Text("Dark",style: TextStyle(fontSize: 20),),
                         leading: Icon(Icons.wb_sunny,color: Colors.yellow,),
                         onTap: (){
                           Get.changeTheme(ThemeData.dark());
                         },
                       ),
                       ListTile(title: Text("System",style: TextStyle(fontSize: 20)),
                         leading: Icon(Icons.light),
                         onTap: (){
                           Get.changeTheme(ThemeData.light());

                         },
                       )
                     ],
                   )
                 ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black,
                      width: 3,
                      style: BorderStyle.solid
                      )
                  ),
                   backgroundColor: Colors.grey,
                 );

                }
                ),
            ),
          ],
        )
      );
    }

  }
import 'package:first_app/screen/Homepage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


import 'login.dart';

class Settingpage extends StatelessWidget{
  const Settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Setting"),),
      body: Container(
        width: 400,
        // margin: EdgeInsets.only(left:15),
      child:  Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 20),
            Text("Settings",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
             SizedBox(height: 20),
            Text("Account",style: TextStyle(fontSize: 20),),
            SizedBox(height: 20),
            Container(
              height: 90,
              width: 500,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade400,

              ),
              child: Row(
                children: [
                  Container(
                    child: Icon(Icons.account_circle),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade500
                    ),
                    margin: EdgeInsets.only(right: 10,left: 10),

                  ),

                  TextButton(onPressed: (){
                         Get.to(Login());
                  },
                      child: Text("Login/Register",style: TextStyle(fontSize: 18),),

                  )
                ],
              ),

            ),
             SizedBox(height: 30),
           Text("Settings",style: TextStyle(fontSize: 20),),
            SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                Container(child: Row(
                  children: [
                    Container(
                        child: Icon(Icons.help),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                            color: Colors.purple.shade400
                        ),
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Text("Appearance",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                )
                ),
                Container(

                  child: Row(
                    children: [Text("light",style: TextStyle(fontSize: 20),),

                      TextButton(
                          child: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,),
                      onPressed: (){

                      },),

                    ],
                  ),

                )
              ],
             ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(child: Row(

                  children: [
                    Container(
                      child: Icon(Icons.language),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.yellow.shade300
                      ),
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Text("Language",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                )
                ),
                Container(

                  child: Row(

                    children: [Text("English",style: TextStyle(fontSize: 20),),
                      TextButton(
                        child: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500,),
                        onPressed: (){

                        },),

                    ],
                  ),

                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.notifications),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue.shade400
                      ),
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Text("Notification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                )
                ),
                TextButton(
                  child: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500),
                  onPressed: (){

                  },),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                    child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.help),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.shade400
                      ),
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Text("Help",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                )
                ),
                TextButton(
                  child: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500),
                  onPressed: (){

                  },),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.logout),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red.shade400
                      ),
                      margin: EdgeInsets.only(right: 10),
                    ),
                    Text("Logout",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                )
                ),
                TextButton(
                  child: Icon(Icons.arrow_forward_ios,color: Colors.grey.shade500),
                  onPressed: (){

                  },),
              ],
            ),



          ],
        ),

      ),

    )
    );

  }

}

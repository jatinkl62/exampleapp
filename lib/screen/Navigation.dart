import 'package:first_app/screen/Homepage.dart';
import 'package:first_app/screen/Settingpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/bottom_navigation_controller.dart';

import 'Themepage.dart';


class Navigation extends StatelessWidget {
  BottomNavigationController bottomNavigationController = Get.put(
      BottomNavigationController());
  final screens = [Homepage(), Themepage(), Settingpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>
          IndexedStack(
            index: bottomNavigationController.selectedIndex.value,
            children: screens,
          )),
      bottomNavigationBar: Obx(() =>
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (index) {

              bottomNavigationController.ontap(index);
            },
            currentIndex: bottomNavigationController.selectedIndex.value,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Colors.grey,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.display_settings),
                label: "theme",
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(

                icon: Icon(Icons.settings),
                label: "setting",


                backgroundColor: Colors.yellow,
              )


            ],


          )
      ),
    );
  }
}

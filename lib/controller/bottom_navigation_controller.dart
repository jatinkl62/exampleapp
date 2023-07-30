import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/Settingpage.dart';


class BottomNavigationController  extends GetxController{
    var selectedIndex =0.obs;


    void ontap(index){
      selectedIndex.value=index;
      if(selectedIndex.value==2){
        Get.to(Settingpage());
      }

    }
}
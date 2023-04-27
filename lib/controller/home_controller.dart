import 'dart:ffi';

import 'package:get/get.dart';
import 'package:sneakers/core/services/services.dart';

class HomeController extends GetxController{

}

class HomeControllerImp extends HomeController{
  
  Myservices myservices = Get.find();

  String? username ;

 initialData (){
   username= myservices.sharedPreferences.getString("username");
 }

 
 @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
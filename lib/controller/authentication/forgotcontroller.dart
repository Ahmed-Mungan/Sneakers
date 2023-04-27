import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers/core/constant/routes.dart';
import 'package:sneakers/view/screen/authentication/signup.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();
  goToVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController { 
  late TextEditingController email; 

  @override
  checkemail() {}

  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoute.verifyCode);
  }

  @override
  void onInit() { 
    email = TextEditingController(); 
    super.onInit();
  }

  @override
  void dispose() { 
    email.dispose(); 
    super.dispose();
  }
}
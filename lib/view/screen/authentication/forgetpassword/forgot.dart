// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers/controller/authentication/forgotcontroller.dart';
import 'package:sneakers/controller/authentication/signupcontroller.dart';
import 'package:sneakers/core/constant/color.dart';
import 'package:sneakers/core/constant/imageasset.dart';
import 'package:sneakers/view/widget/authentication/custombuttonauth.dart';
import 'package:sneakers/view/widget/authentication/customtextbody.dart';
import 'package:sneakers/view/widget/authentication/customtexttitle.dart';
import 'package:sneakers/view/widget/authentication/logoauth.dart';
import 'package:sneakers/view/widget/authentication/textsingup.dart';
import 'package:sneakers/view/widget/authentication/wallpaper.dart';

import '../../../widget/authentication/customtextform.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0.0,
          title: Text('Sneakerz',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 9, 88, 161),
                  fontFamily: 'Anton')),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: ListView(
            children: [
              //    CustomTextTitleAuth (
              //    text : "Login"
              //  ),
              SizedBox(
                height: 20,
              ),
              CustomTextBodyAuth(text: "Enter The Neccesary Information"),
              SizedBox(
                height: 25,
              ),
       
              CustomTextformauth(
                  valid: (val){
                  
                },
                mycontroller: controller.email,
                hintText: "Enter Your Email",
                iconData: Icons.email,
                labeltext: "Email",
                //   mycontroller: ,
              ), 
             /* Text(
                "Forgot Password",
                textAlign: TextAlign.end,
              ),
*/
              CustomButtonAuth(
                text: "Check",
                onPressed: () {
                  controller.goToVerfiyCode();
                },
              ),
              SizedBox(height: 10),

          /*  Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text("Already Have An Account?"),
              InkWell(
                onTap: (){
                  controller.goToSignIn();
                },
                
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]
              ),
            */
            ],
          ),
        ));
  }
}

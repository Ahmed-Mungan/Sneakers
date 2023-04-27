import 'package:flutter/material.dart';
import 'package:sneakers/core/constant/colormanager.dart';
import 'package:get/get.dart';
import 'package:sneakers/controller/home_controller.dart';
import 'package:sneakers/core/constant/color.dart';
import 'package:sneakers/core/constant/fontmanager.dart';
import 'package:sneakers/core/constant/imageasset.dart';
import 'package:sneakers/core/functions/hexcolor.dart';
import 'package:sneakers/view/widget/homepage.dart/appbarwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      body: Container(
          child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              
              Expanded(child: Text('Sneakerz',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 9, 88, 161),
                  fontFamily: 'Anton')),),
           
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                width: 60,
                padding: EdgeInsets.symmetric(vertical: 8),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle_rounded,
                      size: 45,
                      color: Colors.grey[600],
                    )),
              )
            ],
            )
          ),
            SizedBox(height: 10,),
             Container(
              margin: EdgeInsets.only(top: 10),
               padding: EdgeInsets.symmetric(horizontal: 15),
               child: Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Find Product",
                     hintStyle: FontManager.mediumStyle.copyWith(color: Colors.black45),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: Color.fromARGB(255, 224, 223, 223)),
                ),
                ),
             ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Stack(children: [
              Container(
                alignment: Alignment.center,
                child: ListTile(
                  
                  title: Text("Spring Sale"  , style: TextStyle(color: Colors.white , fontSize: 20)),
                  subtitle: Text("20% of all items "  , style: TextStyle(color: Colors.white , fontSize: 30)),
                ),
                height: 150,
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(20)),
              ) , 
              Positioned(
                top: -25,
                right: -25,
                child: Container(height: 160,width: 160,decoration: BoxDecoration(
                  color: Color.fromARGB(255, 131, 127, 127) , 
                  borderRadius: BorderRadius.circular(160)
                ),),
              )
            ]),
          ),
          Container(
            height: 50,
              margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
             Row(
              children: [
                 Expanded(child: Text('Categories',
              style: FontManager.mediumStyle.copyWith(color: Colors.black, fontSize: 25
              )
                  ),),
                   SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                width: 60,
                padding: EdgeInsets.symmetric(vertical: 8),
                child: IconButton(
                    onPressed: () {},
                    icon: 
                    Icon(
                      Icons.arrow_forward,
                      size: 45,
                      color: Colors.black,
                    )),
              )
              ],      
            ),
            
          ),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      width: 160,
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Color.fromARGB(255, 19, 114, 192) ),
                      child: Image.asset(AppImageAsset.menshoe,color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color:Color.fromARGB(255, 19, 114, 192) ),
                      child: Image.asset(AppImageAsset.childshoe,color: Colors.grey),
                      
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color:Color.fromARGB(255, 19, 114, 192) ),
                      child: Image.asset(AppImageAsset.womenshoee,color: Colors.grey,)
                      ,
                    ),
                  ),
                ),
              ],
            ),
          )
        ]

          )
      )
          );
          
  }
}
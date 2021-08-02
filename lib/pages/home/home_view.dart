import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass/controllers/home_controller.dart';
import 'package:glass/pages/signin/signIn_view.dart';
import 'package:glass/utils/color.dart';
import 'package:glass/widgets/button_glass.dart';
import 'package:glass/widgets/glass_container.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(  
          gradient: LinearGradient(
             colors: [purpleBack, blueBack],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(  
          children: [
             Positioned(
              left: 0,
              right: 0,
              top: Get.height * 0.20,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "GlassMorphism",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: Get.height * 0.25 + 10,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      purpleLight,
                      purpleDark,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: -10,
              child: GlassContainer(
                height: Get.height*0.40,
                width: Get.width,
                child: Padding(  
                   padding: const EdgeInsets.all(16.0),
                   child: Column(  
                     crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Text(
                        "New GlassMorphism \nDesign",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: GlassButton(  
                          text: "Get Start",
                          onPress: () => Get.to(SignInPage()),
                        ),
                      ),
                    ],
                   ),
                ),
              ),
            ),
          ],
        ),
      )
      );
  }
}

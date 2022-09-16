import 'dart:async';

import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:get/get.dart';
import 'package:teleradiology/navigation_page.dart';
import 'package:teleradiology/Screens%20Customer/sign_in_page_customer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
       Get.to((NavigationPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: ScaleController.H,
            width: ScaleController.W,
            child: Image.asset(
              "assets/Images/background.png",
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: ScaleController.H * 0.046,
                      child: Image.asset("assets/Images/logo 1.png")),
                  SizedBox(
                    width: ScaleController.W * 0.02,
                  ),
                  Container(
                      height: ScaleController.H * 0.046,
                      child: Image.asset("assets/Images/logo2.png")),
                  SizedBox(
                    width: ScaleController.W * 0.02,
                  ),
                  Container(
                      height: ScaleController.H * 0.046,
                      child: Image.asset("assets/Images/logo3.png")),
                  SizedBox(
                    width: ScaleController.W * 0.02,
                  ),
                  Container(
                      height: ScaleController.H * 0.046,
                      child: Image.asset("assets/Images/logo4.png")),
                ],
              ),
              SizedBox(
                height: ScaleController.H * 0.01,
              ),
              Container(
                  height: ScaleController.H * 0.04,
                  child: Image.asset("assets/Images/essential.png")),
            ],
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/colors_customer.dart'; 
import 'package:teleradiology/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Teleradiology',
      theme: ThemeData(
        fontFamily: 'NunitoSans-Regular'
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
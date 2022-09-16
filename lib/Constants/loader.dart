import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/colors_customer.dart';

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 55.0
    ..contentPadding = EdgeInsets.all(Get.width * 0.07)
    ..radius = 10.0
    ..progressColor = Colors.white
    ..backgroundColor = teleBlue
    ..dismissOnTap = false
    ..indicatorColor = Colors.white
    ..textColor = Colors.black
    ..maskColor = teleBlue
    ..userInteractions = false;
}
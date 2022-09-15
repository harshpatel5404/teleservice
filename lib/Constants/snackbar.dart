import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/servicecolors.dart';

void showCustomSnackBar(String message, {bool isError = true}) {
  if (message.isNotEmpty) {
    Get.showSnackbar(GetSnackBar(
      backgroundColor: isError ? Colors.redAccent : teleBlue,
      message: message,
      maxWidth: Get.width,
      duration: Duration(seconds: 3),
      snackStyle: SnackStyle.FLOATING,
      margin: EdgeInsets.all(10),
      borderRadius: 10,
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
    ));
  }
}
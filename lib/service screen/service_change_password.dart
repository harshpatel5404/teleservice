import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:teleradiology/Constants/snackbar.dart';
import 'package:teleradiology/Services/shared_preference_service.dart';
import 'package:teleradiology/service%20screen/service_verify_otp.dart';

import 'services/api_service_provider.dart';

class ServiceChangePassword extends StatefulWidget {
  const ServiceChangePassword({Key? key}) : super(key: key);

  @override
  State<ServiceChangePassword> createState() => _ServiceChangePasswordState();
}

class _ServiceChangePasswordState extends State<ServiceChangePassword> {
  // TextEditingController emailController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: backgroundBlue,
          appBar: AppBar(
            leading: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: teleBlue2,
                )),
            elevation: 0,
            backgroundColor: backgroundBlue,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: ScaleController.H * 0.15,
                  ),
                  Text(
                    "Change Password",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "NunitoSans",
                        color: teleDarkBlue),
                  ),
                  SizedBox(
                    height: ScaleController.H * 0.05,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: ScaleController.W * 0.05,
                        right: ScaleController.W * 0.05),
                    child: TextFormField(
                      cursorColor: teleGray,
                      controller: otpController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.visibility,
                            color: teleBlack,
                          ),
                          hintText: "Enter OTP",
                          hintStyle: TextStyle(
                              fontSize: 13,
                              color: teleGray,
                              fontFamily: "NunitoSans"),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff184673)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)))),
                    ),
                  ),
                  SizedBox(
                    height: ScaleController.H * 0.02,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: ScaleController.W * 0.05,
                        right: ScaleController.W * 0.05),
                    child: TextFormField(
                      cursorColor: teleGray,
                      controller: passwordController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: teleBlack,
                          ),
                          hintText: "New Password",
                          hintStyle: TextStyle(
                              fontSize: 13,
                              color: teleGray,
                              fontFamily: "NunitoSans"),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff184673)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)))),
                    ),
                  ),
                  SizedBox(
                    height: ScaleController.H * 0.02,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: ScaleController.W * 0.05,
                        right: ScaleController.W * 0.05),
                    child: TextFormField(
                      cursorColor: teleGray,
                      controller: confirmPasswordController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: teleBlack,
                          ),
                          hintText: "Confirm New Password",
                          hintStyle: TextStyle(
                              fontSize: 13,
                              color: teleGray,
                              fontFamily: "NunitoSans"),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff184673)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)))),
                    ),
                  ),
                  SizedBox(
                    height: ScaleController.H * 0.05,
                  ),
                  InkWell(
                    onTap: () async {
                      var email = await getEmail();
                      var password = passwordController.text;
                      var confirm = confirmPasswordController.text;
                      RegExp passwordreg = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      if (otpController.text == "") {
                        showCustomSnackBar('Enter Your OTP');
                      } else if (password.isEmpty) {
                        showCustomSnackBar('Enter Your Password');
                      } else if (!passwordreg.hasMatch(password)) {
                        showCustomSnackBar(
                            'Password must be at least 8 characters, one upper, lower, digit, special character');
                      } else if (confirm.isEmpty) {
                        showCustomSnackBar('Enter Confirm Password');
                      } else if (password != confirm) {
                        showCustomSnackBar('Password do not match');
                      } else {
                        Map data = {
                          "email": email,
                          "recovery_code": otpController.text,
                          "password": password,
                          "confirm_password": password
                        };
                        EasyLoading.show();
                        serviceChangePassword(data).whenComplete(() {
                          EasyLoading.removeAllCallbacks();
                          EasyLoading.dismiss();
                        });
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: ScaleController.W * 0.05,
                          right: ScaleController.W * 0.05),
                      child: Container(
                        height: ScaleController.H * 0.08,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(32)),
                            color: teleButtonBlue),
                        child: Center(
                            child: Text(
                          "Submit",
                          style: TextStyle(
                              fontFamily: "NunitoSans",
                              color: teleWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScaleController.H * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Cancel",
                        style: TextStyle(
                            fontSize: 14,
                            color: telePurple2,
                            fontFamily: "NunitoSans"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}

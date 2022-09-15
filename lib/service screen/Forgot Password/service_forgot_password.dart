import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:teleradiology/service%20screen/Verify%20OTP/service_verify_otp.dart';

class ServiceForgotPassword extends StatefulWidget {
  const ServiceForgotPassword({Key? key}) : super(key: key);

  @override
  State<ServiceForgotPassword> createState() => _ServiceForgotPasswordState();
}

class _ServiceForgotPasswordState extends State<ServiceForgotPassword> {
  TextEditingController emailController = TextEditingController();

  bool selectedItem = true;
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
                    "Password Recovery",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "NunitoSans",
                        color: teleDarkBlue),
                  ),
                  Text(
                    "Enter your registered email address",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "NunitoSans",
                        color: telePurple2),
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
                      controller: emailController,
                      decoration: InputDecoration(
                          prefixIcon: selectedItem
                              ? Icon(
                                  Icons.mail,
                                  color: teleGray,
                                )
                              : Icon(
                                  Icons.mail,
                                  color: teleBlack,
                                ),
                          hintText: "Email Address",
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
                    height: ScaleController.H * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ServiceVerifyOTP());
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
                          "Send OTP",
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

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:teleradiology/Constants/snackbar.dart';
import 'service_forgot_password.dart';
import 'service_sign_up_page.dart';
import 'services/api_service_provider.dart';

class ServiceSignInPage extends StatefulWidget {
  const ServiceSignInPage({Key? key}) : super(key: key);

  @override
  State<ServiceSignInPage> createState() => _ServiceSignInPageState();
}

class _ServiceSignInPageState extends State<ServiceSignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool hidePassword = true;
  bool selectedItem = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: backgroundBlue,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: ScaleController.H * 0.1,
                ),
                Container(
                    height: ScaleController.H * 0.04,
                    width: ScaleController.W * 0.4,
                    child: Image.asset(
                      "assets/Images/essential.png",
                      fit: BoxFit.contain,
                    )),
                SizedBox(
                  height: ScaleController.H * 0.02,
                ),
                Center(
                    child: Text(
                  "Service Provider Sign In",
                  style: TextStyle(
                      fontFamily: "NunitoSans",
                      color: teleBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )),
                SizedBox(
                  height: ScaleController.H * 0.05,
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: ScaleController.W * 0.05,
                      right: ScaleController.W * 0.05),
                  child: TextFormField(
                    cursorColor: teleGray,
                    enabled: selectedItem,
                    controller: emailController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: teleBlack,
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            fontSize: 13,
                            color: teleGray,
                            fontFamily: "NunitoSans"),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: telePurple2),
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
                    obscureText: hidePassword,
                    controller: passwordController,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: teleGray,
                            fontFamily: "NunitoSans"),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: teleGray,
                        ),
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },
                            child: hidePassword
                                ? Icon(
                                    Icons.visibility_outlined,
                                    color: teleGray,
                                  )
                                : Icon(
                                    Icons.visibility_off,
                                    color: teleGray,
                                  )),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: telePurple2),
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
                    var email = emailController.text;
                    var password = passwordController.text;
                    if (email.isEmpty) {
                      showCustomSnackBar('Enter Your Email');
                    } else if (password.isEmpty) {
                      showCustomSnackBar('Enter Your Password');
                    } else {
                      Map data = {
                        "email": email,
                        "password": password,
                      };
                      EasyLoading.show();
                      serviceSignIn(data).whenComplete(() {
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
                        "Sign in",
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
                  height: ScaleController.H * 0.03,
                ),
                InkWell(
                  onTap: () {
                    Get.to(ServiceForgotPassword());
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 14,
                        color: telePurple,
                        fontFamily: "NunitoSans"),
                  ),
                ),
                SizedBox(
                  height: ScaleController.H * 0.28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Have An Account?",
                      style: TextStyle(
                          fontSize: 14,
                          color: teleGreen,
                          fontFamily: "NunitoSans"),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(ServiceSignUpPage());
                      },
                      child: Text(
                        "  Sign Up",
                        style: TextStyle(
                            fontSize: 14,
                            color: telePurple,
                            fontFamily: "NunitoSans"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

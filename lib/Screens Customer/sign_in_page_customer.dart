import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Screens%20Customer/forgot_password_customer.dart';
import 'package:teleradiology/Screens%20Customer/homepage_main_customer.dart';
import 'package:teleradiology/Screens%20Customer/sign_up_page_customer.dart';
import '../Constants/colors_customer.dart';
import '../Constants/dimensions.dart';

class SignInPageCustomer extends StatefulWidget {
  const SignInPageCustomer({Key? key}) : super(key: key);

  @override
  State<SignInPageCustomer> createState() => _SignInPageCustomerState();
}

class _SignInPageCustomerState extends State<SignInPageCustomer> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool hidePassword = true;
  bool selectedItem = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: backgroundBlue,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: ScaleController.H * 0.1,
                  ),
                  Container(
                      height: ScaleController.H * 0.04,
                      child: Image.asset("assets/Images/essential.png")),
                  SizedBox(
                    height: ScaleController.H * 0.02,
                  ),
                  Center(
                      child: Text(
                    "Customer Sign In",
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
                      controller: userController,
                      decoration: InputDecoration(
                          prefixIcon: selectedItem
                              ? Icon(
                                  Icons.person,
                                  color: teleGray,
                                )
                              : Icon(
                                  Icons.person,
                                  color: teleBlack,
                                ),
                          hintText: "Customer",
                          hintStyle: TextStyle(
                              fontSize: 13,
                              color: teleGray,
                              fontFamily: "NunitoSans-Regular"),
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
                              fontFamily: "NunitoSans-Regular"),
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
                      Get.to(HomePageCustomer());
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
                              fontFamily: "NunitoSans-Bold",
                              color: teleWhite,
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
                      Get.to(ForgotPasswordCustomer());
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: 14,
                          color: telePurple,
                          fontFamily: "NunitoSans-Regular"),
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
                            fontFamily: "NunitoSans-Regular"),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(SignUpPageCustomer());
                        },
                        child: Text(
                          "  Sign Up",
                          style: TextStyle(
                              fontSize: 14,
                              color: telePurple,
                              fontFamily: "NunitoSans-Regular"),
                        ),
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

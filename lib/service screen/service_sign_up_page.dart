import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/snackbar.dart';
import 'package:teleradiology/service%20screen/service_forgot_password.dart';
import '../Constants/loader.dart';
import 'service_sign_in_page.dart';
import 'services/api_service_provider.dart';

class ServiceSignUpPage extends StatefulWidget {
  const ServiceSignUpPage({Key? key}) : super(key: key);

  @override
  State<ServiceSignUpPage> createState() => _ServiceSignUpPageState();
}

class _ServiceSignUpPageState extends State<ServiceSignUpPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool hidePassword1 = true;
  bool hidePassword2 = true;
  bool selectedItem = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: backgroundBlue,
          body: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: ScaleController.H * 0.06,
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
                    "Service Provider Sign Up",
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
                          hintText: "Username",
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
                      controller: phoneController,
                      decoration: InputDecoration(
                          prefixIcon: selectedItem
                              ? Icon(
                                  Icons.phone,
                                  color: teleGray,
                                )
                              : Icon(
                                  Icons.phone,
                                  color: teleBlack,
                                ),
                          hintText: "Contact No",
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
                          hintText: "Email",
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
                      obscureText: hidePassword1,
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
                                  hidePassword1 = !hidePassword1;
                                });
                              },
                              child: hidePassword1
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
                      obscureText: hidePassword2,
                      controller: confirmPasswordController,
                      decoration: InputDecoration(
                          hintText: "Confirm Password",
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
                                  hidePassword2 = !hidePassword2;
                                });
                              },
                              child: hidePassword2
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
                  Padding(
                    padding: EdgeInsets.only(
                        left: ScaleController.W * 0.05,
                        right: ScaleController.W * 0.05),
                    child: InkWell(
                      onTap: () {
                        if (formkey.currentState!.validate()) {
                          var name = userController.text;
                          var email = emailController.text;
                          var password = passwordController.text;
                          var phone = phoneController.text;
                          var confirm = confirmPasswordController.text;

                          String pattern =
                              r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                              r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                              r"{0,253}[a-zA-Z0-9])?)*$";
                          RegExp passwordreg = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

                          RegExp emailvalidation = RegExp(pattern);
                          if (name.isEmpty) {
                            showCustomSnackBar('Enter Your Name');
                          } else if (phone.isEmpty) {
                            showCustomSnackBar('Enter Your Phone Number');
                          } else if (phone.length != 10) {
                            showCustomSnackBar(
                                'Enter Your 10 digit phone number ');
                          } else if (email.isEmpty) {
                            showCustomSnackBar('Enter Your Email');
                          } else if (!emailvalidation.hasMatch(email)) {
                            showCustomSnackBar('Enter a valid email address');
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
                              "name": name,
                              "email": email,
                              "phone": phone,
                              "password": password,
                              "confirm_password": confirm,
                              "user_type": 4
                            };
                            EasyLoading.show();
                            signup(data).whenComplete(() {
                              EasyLoading.removeAllCallbacks();
                              EasyLoading.dismiss();
                            });
                          }
                        }
                      },
                      child: Container(
                        height: ScaleController.H * 0.08,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(32)),
                            color: teleButtonBlue),
                        child: Center(
                            child: Text(
                          "Sign Up",
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
                        "Already Have An Account?",
                        style: TextStyle(
                            fontSize: 14,
                            color: teleGreen,
                            fontFamily: "NunitoSans"),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(ServiceSignInPage());
                        },
                        child: Text(
                          "  Sign In",
                          style: TextStyle(
                              fontSize: 14,
                              color: telePurple,
                              fontFamily: "NunitoSans"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScaleController.H * 0.04,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

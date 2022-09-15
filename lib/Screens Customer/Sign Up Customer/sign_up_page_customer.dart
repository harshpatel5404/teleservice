import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Screens%20Customer/Services/api_services.dart';
import 'package:teleradiology/Screens%20Customer/Sign%20In%20Customer/sign_in_page_customer.dart';

class SignUpPageCustomer extends StatefulWidget {
  const SignUpPageCustomer({Key? key}) : super(key: key);

  @override
  State<SignUpPageCustomer> createState() => _SignUpPageCustomerState();
}

class _SignUpPageCustomerState extends State<SignUpPageCustomer> {
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
            child: Center(
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    SizedBox(
                      height: ScaleController.H * 0.05,
                    ),
                    Container(
                        height: ScaleController.H * 0.04,
                        child: Image.asset("assets/Images/essential.png")),
                    SizedBox(
                      height: ScaleController.H * 0.02,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "NunitoSans-Bold",
                          color: teleBlue),
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
                        controller: userController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter name';
                          }
                          return null;
                        },
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
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter number';
                          } else if (value.length != 10) {
                            return 'Number should be 10 digit';
                          }
                          return null;
                        },
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
                                fontFamily: "NunitoSans-Regular"),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter email';
                          } else if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                            return 'Email is not valid';
                          }
                          return null;
                        },
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
                                fontFamily: "NunitoSans-Regular"),
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
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
                        validator: (value) {
                          RegExp passreg =
                              RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          } else if (!passreg.hasMatch(value)) {
                            return "Password contains at least one uppercase, one lowercase, one number and one special character";
                          } else if (value.length < 8) {
                            return "Password length minimum 8 characters";
                          }
                          return null;
                        },
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
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter confirm password';
                          } else if (value.toString() !=
                              passwordController.text) {
                            return 'Password do not match';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
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
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
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
                      child: GestureDetector(
                        onTap: () {
                          if (formkey.currentState!.validate()) {
                            print("valid");
                            var name = userController.text;
                            var email = emailController.text;
                            var password = passwordController.text;
                            var phone = phoneController.text;
                            signup(name, email, phone, password)
                                .whenComplete(() {});
                          }
                        },
                        child: Container(
                          height: ScaleController.H * 0.08,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)),
                              color: teleButtonBlue),
                          child: Center(
                              child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontFamily: "NunitoSans-Bold",
                                color: teleWhite,
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
                              fontFamily: "NunitoSans-Regular"),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(SignInPageCustomer());
                          },
                          child: Text(
                            "  Sign In",
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
            ),
          )),
    );
  }
}

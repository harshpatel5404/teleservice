import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import '../service_mainscreen.dart';

class ServiceResetPassword extends StatefulWidget {
  const ServiceResetPassword({Key? key}) : super(key: key);

  @override
  State<ServiceResetPassword> createState() => _ServiceResetPasswordState();
}

class _ServiceResetPasswordState extends State<ServiceResetPassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool hidePassword1 = true;
  bool hidePassword2 = true;
  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundBlue,
      appBar: AppBar(
        backgroundColor: backgroundBlue,
        elevation: 0,
        leading: Container(
            child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: teleBlue2,
                ))),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: ScaleController.H * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "You have successfully validated your Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.bold,
                    color: teleDarkBlue),
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
                    hintText: "Enter New Password",
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
                        borderRadius: BorderRadius.all(Radius.circular(32))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(32)))),
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
                    hintText: "Confirm New Password",
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
                        borderRadius: BorderRadius.all(Radius.circular(32))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(32)))),
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
                  Get.to(ServiceMainScreen());
                },
                child: Container(
                  height: ScaleController.H * 0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      color: teleButtonBlue),
                  child: Center(
                      child: Text(
                    "Submit",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "NunitoSans",
                        color: teleWhite,
                        fontSize: 14),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: H * 0.05,
            ),
          ],
        )),
      ),
    );
  }

  Container buildTextFormOTP(double W, double H) {
    return Container(
        width: W * 0.20,
        height: H * 0.07,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent, width: 0.5),
        ),
        child: Center(
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: telePurple2),
                    borderRadius: BorderRadius.all(Radius.circular(32))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(32)))),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:teleradiology/Constants/servicecolors.dart';

import '../Forgot Password/service_reset_password.dart';

class ServiceVerifyOTP extends StatefulWidget {
  const ServiceVerifyOTP({Key? key}) : super(key: key);

  @override
  State<ServiceVerifyOTP> createState() => _ServiceVerifyOTPState();
}

class _ServiceVerifyOTPState extends State<ServiceVerifyOTP> {
  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        elevation: 0,
        leading: Container(
            child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: textcolor,
                ))),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: ScaleController.H * 0.2,
            ),
            Text(
              "Verify OTP",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.bold,
                  color: teleDarkBlue),
            ),
            SizedBox(
              height: ScaleController.H * 0.02,
            ),
            Text(
              "Please enter OTP send to email",
              style: TextStyle(
                  fontSize: 14, fontFamily: "NunitoSans", color: telePurple2),
            ),
            SizedBox(
              height: H * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildTextFormOTP(W, H),
                buildTextFormOTP(W, H),
                buildTextFormOTP(W, H),
                buildTextFormOTP(W, H),
              ],
            ),
            SizedBox(
              height: H * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: ScaleController.W * 0.05,
                  right: ScaleController.W * 0.05),
              child: InkWell(
                onTap: () {
                  Get.to(ServiceResetPassword());
                },
                child: Container(
                  height: ScaleController.H * 0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      color: teleButtonBlue),
                  child: Center(
                      child: Text(
                    "Verify",
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
            Text(
              "Resend",
              style: TextStyle(
                  fontSize: 14, color: telePurple2, fontFamily: "NunitoSans"),
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

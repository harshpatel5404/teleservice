import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:teleradiology/Constants/servicecolors.dart';
import 'package:teleradiology/Constants/snackbar.dart';
import 'package:teleradiology/service%20screen/services/api_service_provider.dart';

import 'service_reset_password.dart';

class ServiceVerifyOTP extends StatefulWidget {
  final bool isForgot;
  const ServiceVerifyOTP({Key? key, this.isForgot = false}) : super(key: key);

  @override
  State<ServiceVerifyOTP> createState() => _ServiceVerifyOTPState();
}

class _ServiceVerifyOTPState extends State<ServiceVerifyOTP> {
  OtpFieldController otpFieldController = OtpFieldController();
  String otp = "";

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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: EdgeInsets.all(Get.width * 0.04),
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(children: [
                  OTPTextField(
                      controller: otpFieldController,
                      length: 4,
                      width: MediaQuery.of(context).size.width,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldWidth: Get.width * 0.16,
                      fieldStyle: FieldStyle.box,
                      outlineBorderRadius: 15,
                      style: TextStyle(
                          fontSize: 17,
                          color: textcolor,
                          fontWeight: FontWeight.bold),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.06,
                          vertical: Get.width * 0.04),
                      otpFieldStyle: OtpFieldStyle(
                        borderColor: textcolor,
                        focusBorderColor: textcolor,
                        enabledBorderColor: Color(0xff212121),
                        disabledBorderColor: Colors.black38,
                      ),
                      onChanged: (pin) {},
                      onCompleted: (pin) {
                        setState(() {
                          otp = pin;
                        });
                      }),
                ]),
              ),
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
                  if (otp.length != 4) {
                    showCustomSnackBar("Fill the OTP fields");
                  } else {
                    int otptext = int.parse(otp);
                    EasyLoading.show();
                    serviceOtp(otptext).whenComplete(() {
                      EasyLoading.removeAllCallbacks();
                      EasyLoading.dismiss();
                    });
                  }
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
}

import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Screens%20Customer/Verify%20OTP%20Customer/verify_otp_customer.dart';

class ForgotPasswordCustomer extends StatefulWidget {
  const ForgotPasswordCustomer({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordCustomer> createState() => _ForgotPasswordCustomerState();
}

class _ForgotPasswordCustomerState extends State<ForgotPasswordCustomer> {
  TextEditingController emailController = TextEditingController();

  bool selectedItem = true;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          backgroundColor: backgroundBlue,
          appBar: AppBar(
            leading: InkWell(
                onTap: (){
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios,color: teleBlue2,)),
            elevation: 0,
            backgroundColor: backgroundBlue,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: ScaleController.H*0.15,),
                  Text("Password Recovery",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "NunitoSans-Bold",
                        color: teleDarkBlue
                    ),
                  ),
                  Text("Enter your registered email address",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "NunitoSans-Regular",
                        color: telePurple2
                    ),
                  ),
                  SizedBox(height: ScaleController.H*0.05,),
                  Container(
                    padding: EdgeInsets.only(left: ScaleController.W*0.05,right: ScaleController.W*0.05),
                    child: TextFormField(
                      cursorColor: teleGray,
                      controller: emailController,
                      decoration: InputDecoration(
                          prefixIcon: selectedItem ? Icon(Icons.mail,color: teleGray,) : Icon(Icons.mail,color: teleBlack,),
                          hintText: "Email",
                          hintStyle: TextStyle(
                              fontSize: 13,
                              color: teleGray,
                              fontFamily: "NunitoSans-Regular"
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(Radius.circular(32))
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.all(Radius.circular(32))
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: ScaleController.H*0.03,),
                  InkWell(
                    onTap: (){
                      Get.to(VerifyOTPCustomer());
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: ScaleController.W*0.05,right: ScaleController.W*0.05),
                      child: Container(
                        height: ScaleController.H*0.08,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(32)),
                            color: teleButtonBlue
                        ),
                        child: Center(child: Text("Send OTP",
                          style: TextStyle(
                              fontFamily: "NunitoSans-Bold",
                              color: teleWhite,
                              fontSize: 14
                          ),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(height: ScaleController.H*0.04,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Cancel",
                        style: TextStyle(
                            fontSize: 14,
                            color: telePurple2,
                            fontFamily: "NunitoSans-Regular"
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

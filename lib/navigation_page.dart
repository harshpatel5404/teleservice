import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Screens%20Customer/Sign%20In%20Customer/sign_in_page_customer.dart';
import 'package:teleradiology/service%20screen/Sign%20In/service_sign_in_page.dart';

import 'Services/shared_preference_service.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(),
            Container(
              child: const Text(
                "Are you customer or service provider?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            InkWell(
                onTap: () async {
                  await setIscustomer(true);

                  Get.to(SignInPageCustomer());
                },
                child: Column(
                  children: [
                    Text(
                      "Customer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff303E69)),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Container(
                      height: Get.height * 0.3,
                      width: Get.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/Images/customer.jpg",
                              )),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * 0.03,
                          ), //image
                        ],
                      ),
                    ),
                  ],
                )),
            InkWell(
                onTap: () async {
                  await setIscustomer(false);
                  Get.to(ServiceSignInPage());
                },
                child: Column(
                  children: [
                    Text(
                      "Service Provider",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "NunitoSans",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff303E69)),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Container(
                      height: Get.height * 0.3,
                      width: Get.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/Images/service provider.jpg",
                              )),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * 0.03,
                          ), //image
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}

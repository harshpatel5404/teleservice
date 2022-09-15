import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:teleradiology/service%20screen/Sign%20In/service_sign_in_page.dart';
import 'package:teleradiology/service screen/order_history.dart';
import 'package:teleradiology/service%20screen/service_profile.dart';
import 'package:teleradiology/service screen/service_mainscreen.dart';
import 'package:teleradiology/service screen/service_provider_profile.dart';

import '../../Constants/servicecolors.dart';
import '../services.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  var onTapIndex = 1;

  List tileText = [
    // "Service Information",
    "Profile",
    "Change Password",
    "Manage Service",
    // "Service Details",
    "Manage Subscription",
    "Manage Featured Subscription",
    "Order History",
    "About",
    "Terms & Conditions"
  ];

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    //     overlays: [SystemUiOverlay.top]);
    Size size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width * 0.9,
      child: Container(
        color: Color(0xffECF7FE),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.025, top: size.height * 0.02),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(ServiceProfileScreen());
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 35,
                          child: Image.asset("assets/Images/profile.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ABC Company pvt",
                          style: TextStyle(
                              fontFamily: "NunitoSans",
                              fontSize: 18,
                              color: Color(0xFF303E69)),
                        ),
                        Text(
                          "info@abccompany.com",
                          style: TextStyle(
                              fontFamily: "NunitoSans",
                              fontSize: 13,
                              color: Color(0xFF4A4979)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                child: Divider(
                  height: size.height * 0.08,
                  color: Color(0xFF7978A0),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: tileText.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index == onTapIndex) {
                    // scaffoldKey.currentState!.openEndDrawer();
                    return Padding(
                      padding: const EdgeInsets.only(right: 10, left: 15),
                      child: Container(
                        height: size.height * 0.065,
                        width: size.width * 0.2,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: Color(0xffC2DFDC),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/Images/drawer$index.svg",
                              color: Colors.white,
                              height: 22,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "${tileText[index]}",
                              style: TextStyle(
                                  fontFamily: "NunitoSans",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: textcolor),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  return InkWell(
                    onTap: () {
                      setState(() {
                        onTapIndex = index;
                      });

                      switch (index) {
                        case 0:
                          Get.to(ServiceProviderProfile());
                          break;
                        case 2:
                          Get.to(ServicePage());
                          break;
                        case 5:
                          Get.to(ServiceOrderHistory());
                          break;

                        default:
                      }
                    },
                    child: ListTile(
                      title: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/Images/drawer$index.svg",
                            height: 20,
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Text(
                            "${tileText[index]}",
                            style: TextStyle(
                                fontFamily: "NunitoSans",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: textcolor),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                child: Divider(
                  color: Color(0xFF7978A0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.05, top: size.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.off(ServiceSignInPage());
                      },
                      child: Container(
                        height: size.height * 0.06,
                        width: size.width * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(32)),
                            color: teleBlue),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: size.width * 0.05,
                              right: size.width * 0.05,
                              top: size.height * 0.008,
                              bottom: size.height * 0.008),
                          child: Row(
                            children: [
                              Icon(
                                Icons.logout_outlined,
                                color: Colors.white,
                                size: 18,
                              ),
                              Text(
                                "  Logout",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "NunitoSans",
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

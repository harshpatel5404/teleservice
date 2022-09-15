import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:teleradiology/service screen/service_provider_profile.dart';

import '../Constants/servicecolors.dart';

class ServiceProfileScreen extends StatefulWidget {
  const ServiceProfileScreen({Key? key}) : super(key: key);

  @override
  State<ServiceProfileScreen> createState() => _ServiceProfileScreenState();
}

class _ServiceProfileScreenState extends State<ServiceProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: background,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: textcolor,
                ),
              ),
              Text(
                "Profile",
                style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: textcolor),
              ),
              Stack(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Color(0xffBDC5D5),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffFCB128),
                      radius: 7,
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  margin: EdgeInsets.only(top: size.height * 0.1),
                  height: size.height * 0.45,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffECF7FE),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: size.height * 0.12,
                        ),
                        Row(
                          children: [
                            Container(
                              height: size.height * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "Full Name/\nOrganization",
                                      style: TextStyle(
                                          color: Color(0xff96A3BD),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "Email ID",
                                      style: TextStyle(
                                          color: Color(0xff96A3BD),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "Contact Number",
                                      style: TextStyle(
                                          color: Color(0xff96A3BD),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      "Address",
                                      style: TextStyle(
                                          color: Color(0xff96A3BD),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Container(
                              height: size.height * 0.29,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      ":  ABC Company",
                                      style: TextStyle(
                                          color: Color(0xff303E69),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.width * 0.05,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      ":  Info@dummy.com",
                                      style: TextStyle(
                                          color: Color(0xff303E69),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      ":  +258 789 8965 ",
                                      style: TextStyle(
                                          color: Color(0xff303E69),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      width: size.width * 0.39,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            ":  ",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Color(0xff303E69),
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            width: size.width * 0.35,
                                            child: Text(
                                              "31/32 mrfgi doller.Hilton",
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Color(0xff303E69),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.05,
                left: size.width * 0.35,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(width: 5, color: Colors.white)),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/Images/profile.png"),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: size.width,
            child: ElevatedButton(
              child: Text(
                'Edit Profile',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ServiceProviderProfile()),
                );
              },
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  primary: Color(0xff303E69),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                  textStyle: const TextStyle(
                      fontSize: 16,
                      fontFamily: "NunitoSans",
                      color: Color(0xff184673),
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}

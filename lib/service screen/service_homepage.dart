import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teleradiology/Constants/servicecolors.dart';
import 'most_visited.dart';
import 'service_mainscreen.dart';
import 'widgets/drawer_widget.dart';

class ServiceHomePage extends StatefulWidget {
  const ServiceHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<ServiceHomePage> createState() => _ServiceHomePageState();
}

class _ServiceHomePageState extends State<ServiceHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          backgroundColor: background,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              scaffoldKey.currentState!.openDrawer();
            },
            child: SizedBox(
                height: 10,
                width: 10,
                child: Icon(
                  Icons.menu,
                  color: teleBlue,
                )),
          ),
          centerTitle: true,
          title: Text(
            "Teleradiology",
            style:
                TextStyle(fontFamily: "NunitoSans", color: Color(0xff303E69)),
          ),
          titleTextStyle: TextStyle(
              fontSize: 20, fontFamily: "NunitoSans-Bold", color: darkPurple),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                color: appbar,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(right: size.width * 0.04),
                child: Center(
                  child: Stack(
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
                            "3",
                            style: TextStyle(fontSize: 11, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: size.height * 0.08,
                      padding: EdgeInsets.only(
                          left: size.width * 0.05, right: size.width * 0.05),
                      child: TextFormField(
                        cursorColor: teleGray,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Color(0xFF8771A7),
                            ),
                            hintText: "Search radiology services here......",
                            hintStyle: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF4A4979),
                                fontFamily: "NunitoSans"),
                            filled: true,
                            contentPadding: EdgeInsets.all(15),
                            fillColor: secondarybg,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: telestrokeBorder, width: 5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: telestrokeBorder, width: 5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32)))),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: size.width * 0.06,
                      ),
                      child: Container(
                        height: size.height * 0.075,
                        width: size.width * 0.16,
                        child: Center(
                          child: Text(
                            "Go",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "NunitoSans",
                                color: Colors.white),
                          ),
                        ),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xff303E69),
                                Color(0xff162657),
                              ],
                            )),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.03, right: size.width * 0.03),
                child: Container(
                  height: size.height * 0.24,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          buildListCardHome(
                              "assets/Images/radiology_list.png", "Radiology"),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Container(
                width: size.width * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 6,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xff89A7D8)),
                    ),
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff89A7D8)),
                    ),
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff89A7D8)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                width: size.width * 0.95,
                child: Divider(
                  color: Color(0xFF7978A0),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        "   Our Services",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "NunitoSans",
                            color: Color(0xFF303E69)),
                      ),
                      SizedBox(
                        width: size.height * 0.01,
                      ),
                      Container(
                        height: 6,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF303E69)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "See All     ",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "NunitoSans",
                            color: Color(0xffFCB128)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      buildHomeCard(),
                      SizedBox(
                        height: size.height * 0.01,
                      )
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildHomeCard() {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2,
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: Color(0xFFE0F4FF),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Color(0xFFBFD6E4), width: 5)),
      child: Padding(
        padding: EdgeInsets.only(left: size.width * 0.05),
        child: Row(
          children: [
            Container(
              height: size.width * 0.3,
              width: size.width * 0.31,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Images/radiology_list.png"),
                      fit: BoxFit.fill),
                  border: Border.all(color: Colors.white, width: 5),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
            ),
            SizedBox(
              width: size.width * 0.05,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Radiology",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "NunitoSans",
                      color: Color(0xFF184673)),
                ),
                SizedBox(
                  width: size.width * 0.45,
                  child: Text(
                    "Dicta sunt explicabo ratione enim ipsam voluptatem quia",
                    maxLines: 3,
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 11,
                        fontFamily: "NunitoSans",
                        color: Color(0xFF4A4979)),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      "Price:",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: "NunitoSans",
                          color: Color(0xffFCB128)),
                    ),
                    Text(
                      "  \$80.00",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: "NunitoSans",
                          color: Color(0xFF4A4979)),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildListCardHome(String image, String title) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: size.height * 0.15,
          width: size.width * 0.3,
          decoration: BoxDecoration(
              color: Color(0xFFE0F4FF),
              borderRadius: BorderRadius.all(Radius.circular(25)),
              border: Border.all(color: telestrokeBorder, width: 5)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 13, fontFamily: "NunitoSans", color: Color(0xFF4A4979)),
        ),
      ],
    );
  }
}

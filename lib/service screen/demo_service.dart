import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/servicecolors.dart';
import 'package:teleradiology/service screen/service_mainscreen.dart';
import 'widgets/drawer_widget.dart';

class DemoService extends StatefulWidget {
  const DemoService({Key? key}) : super(key: key);

  @override
  State<DemoService> createState() => _DemoServiceState();
}

class _DemoServiceState extends State<DemoService> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedRadio = 1;

  @override
  void initState() {
    super.initState();
    // selectedRadio = 1;
  }

// Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    String gender = "male";
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: background,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              scaffoldKey.currentState?.openDrawer();
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
              Stack(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.1),
                    height: size.height * 0.7,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffECF7FE),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: size.height * 0.06,
                          ),
                          Text(
                            "Radiology",
                            style: TextStyle(
                                fontFamily: "NunitoSans",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff184673)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calendar_month,
                                size: 25,
                                color: Color(0xffFCB128),
                              ),
                              Text(
                                " 5th June , 2022",
                                style: TextStyle(
                                    fontFamily: "NunitoSans",
                                    fontSize: 14,
                                    color: Color(0xff4A4979)),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "User name: ",
                                style: TextStyle(
                                    fontFamily: "NunitoSans",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff7D7CA5)),
                              ),
                              Text(
                                "Alex Brown",
                                style: TextStyle(
                                    fontFamily: "NunitoSans",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff184673)),
                              ),
                            ],
                          ),
                          Divider(
                            height: size.height * 0.05,
                            color: Color(0xff96A3BD),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About:  ",
                                style: TextStyle(
                                    fontFamily: "NunitoSans",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff184673)),
                              ),
                              Container(
                                width: size.width * 0.67,
                                child: Text(
                                  "Magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, dolorem ipsum quia dolor sit amet, consectetur",
                                  softWrap: true,
                                  maxLines: 5,
                                  style: TextStyle(
                                      fontFamily: "NunitoSans",
                                      fontSize: 13,
                                      color: Color(0xff184673)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Prd type:",
                                style: TextStyle(
                                    fontFamily: "NunitoSans",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff184673)),
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: selectedRadio,
                                    activeColor: Color(0xff303E69),
                                    onChanged: (val) {
                                      print("Radio $val");
                                      setSelectedRadio(
                                          int.parse(val.toString()));
                                    },
                                  ),
                                  Text(
                                    "Rental",
                                    style: TextStyle(
                                        fontFamily: "NunitoSans",
                                        fontSize: 14,
                                        color: Color(0xff4A4979)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 2,
                                    groupValue: selectedRadio,
                                    // fillColor: Color(0xff4A4979),
                                    activeColor: Color(0xff303E69),
                                    onChanged: (val) {
                                      print("Radio $val");
                                      setSelectedRadio(
                                          int.parse(val.toString()));
                                    },
                                  ),
                                  Text(
                                    "Selling",
                                    style: TextStyle(
                                        fontFamily: "NunitoSans",
                                        fontSize: 14,
                                        color: Color(0xff4A4979)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Quantity:  ",
                                style: TextStyle(
                                    fontFamily: "NunitoSans",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff184673)),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  height: size.width * 0.06,
                                  width: size.width * 0.06,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Text(
                                    "+",
                                    // textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "NunitoSans",
                                        fontSize: 15,
                                        color: Color(0xff4A4979)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: size.width * 0.08,
                                    width: size.width * 0.08,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontFamily: "NunitoSans",
                                          fontSize: 15,
                                          color: Color(0xff4A4979)),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  height: size.width * 0.06,
                                  width: size.width * 0.06,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        fontFamily: "NunitoSans",
                                        fontSize: 15,
                                        color: Color(0xff4A4979)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: size.height * 0.05,
                            color: Color(0xff96A3BD),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price Rate:",
                                style: TextStyle(
                                    fontFamily: "NunitoSans",
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff184673)),
                              ),
                              Text(
                                "\$1160",
                                style: TextStyle(
                                    fontFamily: "NunitoSans",
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff184673)),
                              ),
                            ],
                          ),
                          Divider(
                            height: size.height * 0.05,
                            color: Color(0xff96A3BD),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                child: Text(
                                  'Save',
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    primary: Color(0xff303E69),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.15,
                                        vertical: 12),
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: "NunitoSans",
                                        color: Color(0xff184673),
                                        fontWeight: FontWeight.bold)),
                              ),
                              ElevatedButton(
                                child: Text(
                                  'Exit',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "NunitoSans",
                                      color: Color(0xff7978A0),
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    primary: Color(0xffE9E9F4),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.15,
                                        vertical: 10),
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "NunitoSans",
                                        color: Color(0xff7978A0),
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.02,
                    left: size.width * 0.35,
                    child: Image.asset(
                      "assets/Images/service.png",
                      height: size.width * 0.33,
                      width: size.width * 0.33,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

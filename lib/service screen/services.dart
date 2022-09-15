import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/servicecolors.dart';
import 'package:teleradiology/service screen/demo_service.dart';
import 'package:teleradiology/service screen/service_mainscreen.dart';
import 'package:teleradiology/service screen/widgets/drawer_widget.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
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
              ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: secondarybg,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 4, color: telestrokeBorder)),
                          child: Container(
                            height: size.width * 0.33,
                            width: size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: size.width * 0.25,
                                      width: size.width * 0.25,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.white, width: 3)),
                                      child: Image.asset(
                                        "assets/Images/radiology_list.png",
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Imagine",
                                      style: TextStyle(
                                          fontFamily: "NunitoSans",
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff184673)),
                                    ),
                                    Container(
                                      width: size.width * 0.3,
                                      child: Text(
                                        "Dicta sunt explicabo ratione ",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: "NunitoSans",
                                            fontSize: 11,
                                            color: Color(0xff4A4979)),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          size: 18,
                                          color: Color(0xffFCB128),
                                        ),
                                        Text(
                                          " 5th June , 2022",
                                          style: TextStyle(
                                              fontFamily: "NunitoSans",
                                              fontSize: 10,
                                              color: Color(0xff184673)),
                                        ),
                                      ],
                                    ),
                                    ElevatedButton(
                                      child: Text(
                                        'Details',
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DemoService()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          elevation: 5,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          primary: Color(0xff303E69),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25, vertical: 8),
                                          textStyle: const TextStyle(
                                              fontSize: 12,
                                              fontFamily: "NunitoSans",
                                              color: Color(0xff184673),
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 3,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSwitched = !isSwitched;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: isSwitched && index == 0
                              ? Container(
                                  height: size.width * 0.07,
                                  width: size.width * 0.13,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xffFFDB76),
                                        Color(0xffF5C230),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        "assets/Images/true.png",
                                        height: 13,
                                      ),
                                      Container(
                                        height: size.width * 0.05,
                                        width: size.width * 0.05,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : Container(
                                  height: size.width * 0.07,
                                  width: size.width * 0.13,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xff395ABF),
                                        Color(0xff0F87FF),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Container(
                                        height: size.width * 0.05,
                                        width: size.width * 0.05,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

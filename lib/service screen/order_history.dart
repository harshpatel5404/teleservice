import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/servicecolors.dart';
import 'package:teleradiology/service screen/order_summery.dart';

class ServiceOrderHistory extends StatefulWidget {
  const ServiceOrderHistory({Key? key}) : super(key: key);

  @override
  State<ServiceOrderHistory> createState() => _ServiceOrderHistoryState();
}

class _ServiceOrderHistoryState extends State<ServiceOrderHistory> {
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
                "Order History",
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
      body: Container(
        margin: EdgeInsets.only(top: size.height * 0.05),
        padding: EdgeInsets.only(top: 20),
        width: size.width,
        height: size.height * 0.83,
        decoration: BoxDecoration(
          color: Color(0xffECF7FE),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                          color: secondarybg,
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(width: 4, color: telestrokeBorder)),
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
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.white, width: 5)),
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
                                          builder: (context) => ServiceOrderSummery()),
                                    );
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

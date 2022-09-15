import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teleradiology/Constants/servicecolors.dart';
import 'package:teleradiology/service screen/order_history.dart';

class ServiceOrderSummery extends StatefulWidget {
  const ServiceOrderSummery({Key? key}) : super(key: key);

  @override
  State<ServiceOrderSummery> createState() => _ServiceOrderSummeryState();
}

class _ServiceOrderSummeryState extends State<ServiceOrderSummery> {
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
              Icon(
                Icons.arrow_back_ios,
                color: textcolor,
              ),
              Text(
                "Order Summary",
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
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                      color: secondarybg,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 4, color: telestrokeBorder)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Qty",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "NunitoSans",
                                  color: Color(0xFF184673)),
                            ),
                            SizedBox(
                              width: size.width * 0.09,
                            ),
                            Text(
                              "Price",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: "NunitoSans",
                                  color: Color(0xFF184673)),
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: size.width * 0.25,
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
                                      width: size.width * 0.2,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                      width: size.width * 0.35,
                                      child: Text(
                                        "Dicta sunt explicabo ratione ",
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontFamily: "NunitoSans",
                                            fontSize: 11,
                                            color: Color(0xff4A4979)),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
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
                                        fontSize: 14,
                                        color: Color(0xff4A4979)),
                                  ),
                                ),
                                Text(
                                  "  \$80.00",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "NunitoSans",
                                      color: Color(0xFF4A4979)),
                                ),
                                SizedBox()
                              ],
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Container(
                        width: size.width * 0.8,
                        child: Divider(
                          color: Color(0xFF7978A0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Subtotal:",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "NunitoSans",
                                  color: Color(0xFF184673)),
                            ),
                            Text(
                              "  \$160.00",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "NunitoSans",
                                  color: Color(0xFF184673)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Payment Details",
                style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff184673)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: size.width * 0.2,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/Images/pay1.png",
                          width: size.width * 0.5,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/Images/pay2.png",
                          width: size.width * 0.4,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                child: Text(
                  'Continue',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ServiceOrderHistory()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Color(0xff303E69),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 12),
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontFamily: "NunitoSans",
                        color: Color(0xff184673),
                        fontWeight: FontWeight.bold)),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';

class PaymentCustomer extends StatefulWidget {
  const PaymentCustomer({
    Key? key,
  }) : super(key: key);

  @override
  State<PaymentCustomer> createState() => _PaymentCustomerState();
}

class _PaymentCustomerState extends State<PaymentCustomer> {
  TextEditingController cardnoController = TextEditingController();
  TextEditingController validController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: backgroundBlue,
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            child: BottomNavigationBar(
              elevation: 0,
              currentIndex: _currentIndex,
              selectedItemColor: teleBlue2,
              unselectedItemColor: Color(0xFF3B3A65),
              backgroundColor: Colors.transparent,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),
                    label: "Home",
                    backgroundColor: Color(0xFFE0F4FF)),
                BottomNavigationBarItem(icon: Icon(Icons.analytics),
                    label: "Analytics",
                    backgroundColor: Color(0xFFE0F4FF)),
                BottomNavigationBarItem(icon: Icon(Icons.person),
                    label: "Profile",
                    backgroundColor: Color(0xFFE0F4FF)),
                BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),
                    label: "Cart",
                    backgroundColor: Color(0xFFE0F4FF)),
                BottomNavigationBarItem(icon: Icon(Icons.dashboard),
                    label: "DashBoard",
                    backgroundColor: Color(0xFFE0F4FF)),
              ],
              selectedLabelStyle: TextStyle(
                  fontFamily: 'NunitoSans-Regular', color: Color(0xFF4A4979)),
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          appBar: AppBar(
            backgroundColor: backgroundBlue,
            elevation: 0,
            leading: InkWell(
              child: Container(
                  child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: teleBlue2,
                        size: 20,
                      ))),
            ),
            centerTitle: true,
            title: Text("Payment"),
            titleTextStyle: TextStyle(
                fontSize: 20,
                fontFamily: "NunitoSans",
                fontWeight: FontWeight.bold,
                color: Color(0xFF184673)),
            actions: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(right: Get.width * 0.04),
                  child: Center(
                    child: Stack(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: Get.width * 0.03,
                          ),
                          child: CircleAvatar(
                            backgroundColor: teleBlue,
                            radius: 7,
                            child: Text(
                              "3",
                              style: TextStyle(fontSize: 11,
                                  color: Colors.white),
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    backgroundColor: Color(0xff0F87FF),
                    radius: 15,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: Get.height * 0.713,
                  width: Get.width * 0.9,
                  decoration: BoxDecoration(
                      color: Color(0xffECF7FE),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      )),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: Get.width * 0.05, right: Get.width * 0.05),
                        child: TextFormField(
                          cursorColor: teleGray,
                          controller: cardnoController,
                          decoration: InputDecoration(
                              hintText: "Card No",
                              hintStyle: TextStyle(
                                  fontSize: 13,
                                  color: teleGray,
                                  fontFamily: "NunitoSans"),
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color(0xff184673)),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(32))),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(32)))),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Row(
                        children: [
                          Container(
                            width: Get.width * 0.55,
                            padding: EdgeInsets.only(
                              left: Get.width * 0.05,
                            ),
                            child: TextFormField(
                              cursorColor: teleGray,
                              controller: validController,
                              decoration: InputDecoration(
                                  hintText: "Valid",
                                  hintStyle: TextStyle(
                                      fontSize: 13,
                                      color: teleGray,
                                      fontFamily: "NunitoSans"),
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Color(0xff184673)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(32))),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(32)))),
                            ),
                          ),
                          Container(
                            width: Get.width * 0.35,
                            padding: EdgeInsets.only(
                                left: Get.width * 0.02,
                                right: Get.width * 0.05),
                            child: TextFormField(
                              cursorColor: teleGray,
                              controller: cvvController,
                              decoration: InputDecoration(
                                  hintText: "CVV",
                                  hintStyle: TextStyle(
                                      fontSize: 13,
                                      color: teleGray,
                                      fontFamily: "NunitoSans"),
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Color(0xff184673)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(32))),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(32)))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: ScaleController.H*0.02,),
                      Container(
                        width: ScaleController.W*0.8,
                        child: Divider(
                          height: Get.height * 0.04,
                          color: Color(0xFF7978A0),
                        ),
                      ),
                      SizedBox(height: ScaleController.H*0.01,),
                      Padding(
                        padding:  EdgeInsets.only(left: ScaleController.W*0.04,right:ScaleController.W*0.04 ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: Get.height * 0.14,
                              width: Get.width * 0.4,
                              child: Image.asset(
                                "assets/Images/gift_card.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              height: Get.height * 0.14,
                              width: Get.width * 0.4,
                              decoration: BoxDecoration(
                                  color: Color(0xffCCEBDF),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/Images/wallet.png",
                                    height: Get.height * 0.09,
                                    fit: BoxFit.fill,
                                  ),
                                  Text(
                                    "Crypto\nWallet",
                                    style: TextStyle(
                                        fontFamily: "NunitoSans",
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff184673)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: ScaleController.H*0.03,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          padding: EdgeInsets.only(
                              left: Get.width * 0.05, right: Get.width * 0.05),
                          height: Get.height * 0.13,
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Price Details",
                                style: TextStyle(
                                    fontFamily: "NunitoSans",
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff184673)),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Subtotal: ",
                                    style: TextStyle(
                                        fontFamily: "NunitoSans",
                                        fontSize: 14,
                                        color: Color(0xff4A4979)),
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
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.023,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: ScaleController.H*0.07,
                        width: Get.width*0.9,
                        child: ElevatedButton(
                          child: Text(
                            'Pay',
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              primary: Color(0xff018BD3),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 12),
                              textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontFamily: "NunitoSans",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}


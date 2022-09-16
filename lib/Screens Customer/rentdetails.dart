import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:get/get.dart';

class RentDetails extends StatefulWidget {
  const RentDetails({Key? key}) : super(key: key);

  @override
  State<RentDetails> createState() => _RentDetailsState();
}

class _RentDetailsState extends State<RentDetails> {
  int _value = 1;

  final TextEditingController _date = TextEditingController();

  int count = 0;
  void _incrementCount() {
    setState(() {
      count++;
    });
  }

  void _decrementCount() {
    setState(() {
      if (count > 0) count--;
    });
  }

  TextEditingController date = TextEditingController();
  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundBlue,
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
          title: Text("Radiology"),
          titleTextStyle: TextStyle(
              fontSize: 20,
              fontFamily: "NunitoSans-Bold",
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
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: ScaleController.H * 0.01,
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: ScaleController.W * 0.15),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: ScaleController.H * 0.08,
                      width: ScaleController.W * 0.8,
                      child: TextFormField(
                        cursorColor: teleGray,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Color(0xFF8771A7),
                            ),
                            hintText: "Search radiology services here....",
                            hintStyle: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF4A4979),
                                fontFamily: "NunitoSans-Regular"),
                            filled: true,
                            fillColor: Colors.white,
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
                ),
                Padding(
                  padding: EdgeInsets.only(right: ScaleController.W * 0.08),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: ScaleController.W * 0.09,
                      ),
                      child: Container(
                        height: ScaleController.H * 0.075,
                        width: ScaleController.W * 0.16,
                        child: Center(
                          child: Text(
                            "Go",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "NunitoSans-Bold",
                                color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: teleBlue2,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: ScaleController.H * 0.005,
                      right: ScaleController.W * 0.02),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: ScaleController.H * 0.065,
                      width: ScaleController.W * 0.14,
                      child: Center(
                          child: Container(
                              height: ScaleController.H * 0.03,
                              child: Image.asset(
                                  "assets/Images/filter_icon.png"))),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Color(0xFFAFAED3),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScaleController.H * 0.03,
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: H * 0.1),
                  child: Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    decoration: BoxDecoration(
                        color: Color(0xFFECF7FE),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          SizedBox(
                            height: H * 0.12,
                          ),
                          Text(
                            "Radiology",
                            style: TextStyle(
                                fontSize: 26,
                                fontFamily: "NunitoSans-Bold",
                                color: teleBlue2,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: H * 0.02,
                          ),
                          Text(
                            "magni dolores eos qui ratione voluptatem sequi nesciunt.Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "NunitoSans-Regular",
                                fontWeight: FontWeight.w300,
                                color: telePurple2,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: H * 0.02,
                          ),
                          Text(
                            "magni dolores eos qui ratione voluptatem sequi nesciunt.Neque porro quisquam est, qui",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "NunitoSans-Regular",
                                fontWeight: FontWeight.w300,
                                color: telePurple2,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: H * 0.03,
                          ),
                          Text(
                            "Price:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "NunitoSans-SemiBold",
                                fontWeight: FontWeight.w500,
                                color: teleBlue2,
                                decoration: TextDecoration.none),
                          ),
                          Text(
                            "\$80.00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: "NunitoSans-SemiBold",
                                fontWeight: FontWeight.w500,
                                color: telePurple2,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: H * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Date:",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "NunitoSans-Bold",
                                  decoration: TextDecoration.none,
                                  color: telePurple2,
                                ),
                              ),
                              Container(
                                height: H * 0.075,
                                width: W * 0.65,
                                child: TextFormField(
                                  readOnly: true,
                                  style: TextStyle(
                                      height: H * 0.0015,
                                      fontSize: 18,
                                      fontFamily: "NunitoSans-Regular",
                                      color: teleGray),
                                  onTap: () async {
                                    DateTime? pickeddate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1947),
                                        lastDate: DateTime(2099));
                                    if (pickeddate != null) {
                                      setState(() {
                                        date.text = DateFormat('dd/MMM/yyyy')
                                            .format(pickeddate);
                                      });
                                    }
                                  },
                                  controller: date,
                                  decoration: InputDecoration(
                                      hintText: "Select Date",
                                      hintStyle: TextStyle(
                                          fontFamily: "NunitoSans-Regular",
                                          fontSize: 14,
                                          color: teleGray),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16),
                                        child: Container(
                                            child: SvgPicture.asset(
                                          "assets/Images/Calender.svg",
                                        )),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(32))),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(32)))),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: H * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Prd type:",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "NunitoSans-Bold",
                                  decoration: TextDecoration.none,
                                  color: Color(0xff184673),
                                ),
                              ),
                              SizedBox(
                                width: W * 0.02,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 18,
                                    width: 18,
                                    child: Radio(
                                        value: 1,
                                        groupValue: _value,
                                        onChanged: (value) {
                                          setState(() {
                                            _value = 1;
                                          });
                                        }),
                                  ),
                                  SizedBox(
                                    width: W * 0.01,
                                  ),
                                  Text(
                                    "Commercial",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "NunitoSans-SemiBold",
                                      decoration: TextDecoration.none,
                                      color: Color(0xff4A4979),
                                    ),
                                  ),
                                  SizedBox(
                                    width: W * 0.02,
                                  ),
                                  Container(
                                    height: 18,
                                    width: 18,
                                    child: Radio(
                                        value: 2,
                                        groupValue: _value,
                                        onChanged: (value) {
                                          setState(() {
                                            _value = 2;
                                          });
                                        }),
                                  ),
                                  SizedBox(
                                    width: W * 0.01,
                                  ),
                                  Text(
                                    "Recreational",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "NunitoSans-SemiBold",
                                      decoration: TextDecoration.none,
                                      color: Color(0xff4A4979),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: H * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Quantity:",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "NunitoSans-Bold",
                                  decoration: TextDecoration.none,
                                  color: Color(0xff184673),
                                ),
                              ),
                              SizedBox(
                                width: W * 0.04,
                              ),
                              Container(
                                height: H * 0.04,
                                child: FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: Colors.white,
                                  onPressed: _decrementCount,
                                  child: Icon(Icons.remove,
                                      color: Color(0xff4A4979), size: W * 0.05),
                                ),
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  height: H * 0.06,
                                  width: W * 0.12,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        bottom: ScaleController.H * 0.015),
                                    child: Text(
                                      "${count}",
                                      style: TextStyle(
                                          height: H * 0.00225,
                                          fontSize: 25,
                                          fontFamily: "NunitoSans-Bold",
                                          decoration: TextDecoration.none,
                                          color: Color(0xff4A4979)),
                                    ),
                                  )),
                              Container(
                                height: H * 0.04,
                                child: FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: Colors.white,
                                  onPressed: _incrementCount,
                                  child: Icon(Icons.add,
                                      color: Color(0xff4A4979), size: W * 0.05),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: H * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: H * 0.075,
                                width: W * 0.4,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffBBC9D3),
                                          blurRadius: 10,
                                          offset: Offset(0, 7.5))
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(32)),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff0581D7),
                                        Color(0xff1463D4),
                                      ],
                                    )),
                                child: Text(
                                  "Add to Cart",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Gilroy-Bold",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      decoration: TextDecoration.none,
                                      color: Colors.white),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: H * 0.075,
                                width: W * 0.4,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(32)),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xffD1D0F1),
                                        Color(0xffBDBCE4),
                                      ],
                                    )),
                                child: Text(
                                  "Buy Now",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "Gilroy-Bold",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      decoration: TextDecoration.none,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: H * 0.06,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScaleController.H * 0.01),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/Images/imagine_list.png")),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 0.5),
                                color: Color(0xffD7E6F0),
                                blurRadius: 10)
                          ],
                          color: Color(0xff2A8FEA),
                          border: Border.all(color: Colors.white, width: 7.5),
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      height: H * 0.17,
                      width: W * 0.38,
                    ),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}

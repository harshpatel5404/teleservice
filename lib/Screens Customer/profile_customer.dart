import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';

class ProfileCustomer extends StatefulWidget {
  const ProfileCustomer({Key? key,}) : super(key: key);

  @override
  State<ProfileCustomer> createState() => _ProfileCustomerState();
}

class _ProfileCustomerState extends State<ProfileCustomer> {
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
                    onTap: (){
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back_ios,color: teleBlue2,size: 20,))),
          ),
          centerTitle: true,
          title: Text("Profile"),
          titleTextStyle: TextStyle(
              fontSize: 20,
              fontFamily: "NunitoSans-Bold",
              color:Color(0xFF184673)
          ),
          actions: [InkWell(
            onTap: (){},
            child: Padding(
              padding:  EdgeInsets.only(right: ScaleController.W*0.04),
              child: Center(
                child: Stack(
                  children: [
                    Icon(Icons.notifications,color: Colors.white,),
                    Padding(
                      padding:  EdgeInsets.only(left: ScaleController.W*0.03,),
                      child: CircleAvatar(
                        backgroundColor: teleBlue,
                        radius: 7,
                        child: Text("3",style: TextStyle(
                            fontSize: 11,
                            color: Colors.white
                        ),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: H*0.02,),
                Container(
                  height: H*0.55,
                  child: Container(
                      color: backgroundBlue,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter
                            ,child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFECF7FE),
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                            height: H*0.42,
                            width: W*0.9,
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: H*0.1,),
                                  Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft
                                        ,child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Full Name/\nOrganization",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: "Opensans-Regular",
                                                  color: Color(0xFF96A3BD)
                                              )
                                          ),
                                          SizedBox(height: H*0.035,),
                                          Text("Email ID",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: "Opensans-Regular",
                                                  color: Color(0xFF96A3BD)
                                              )
                                          ),
                                          SizedBox(height: H*0.035,),
                                          Text("Contact Number",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: "Opensans-Regular",
                                                  color: Color(0xFF96A3BD)
                                              )
                                          ),
                                          SizedBox(height: H*0.035,),
                                          Text("Address",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: "Opensans-Regular",
                                                  color: Color(0xFF96A3BD)
                                              )
                                          ),
                                        ],
                                      ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight
                                        ,child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(":  Alex Brown",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: "Opensans-Regular",
                                                  color: Color(0xFF303E69)
                                              )
                                          ),
                                          SizedBox(height: H*0.06,),
                                          Text(":  alex@dummy.com",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: "Opensans-Regular",
                                                  color: Color(0xFF303E69)
                                              )
                                          ),
                                          SizedBox(height: H*0.035,),
                                          Text(":  +258 789 8965",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: "Opensans-Regular",
                                                  color: Color(0xFF303E69)
                                              )
                                          ),
                                          SizedBox(height: H*0.035,),
                                          Text(":  31/32 mrfgi doller. \n   Hilton",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: "Opensans-Regular",
                                                  color: Color(0xFF303E69)
                                              )
                                          ),
                                        ],
                                      ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: H*0.02,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(bottom: H*0.35),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: InkWell(
                                onTap: (){},
                                child: Container(
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 43,
                                      child: Container(
                                      height: H*0.12,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/Images/profile_pic.png"),
                                            fit: BoxFit.fill
                                          )
                                      ),
                                    ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                SizedBox(height: H*0.05,),
                Padding(
                  padding: EdgeInsets.only(left: ScaleController.W*0.05,right: ScaleController.W*0.05),
                  child: Container(
                    height: ScaleController.H*0.08,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                        color: teleButtonBlue
                    ),
                    child: Center(child: Text("Edit Profile",
                      style: TextStyle(
                          fontFamily: "NunitoSans-Bold",
                          color: teleWhite,
                          fontSize: 14
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTextProfile(double W,String title,String subTitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(
                fontSize: 15,
                fontFamily: "Opensans-Regular",
                color: Color(0xFF606060)
            )
        ),
        SizedBox(width: W*0.25,),
        Text(":",
            style: TextStyle(
                fontSize: 15,
                fontFamily: "Opensans-Regular"
            )
        ),
        Text(subTitle,
            style: TextStyle(
                fontSize: 15,
                fontFamily: "Opensans-Regular"
            )
        ),
      ],
    );
  }
  Container buildCardFlyer(double H, double W) {
    return Container(
      height: H*0.15,
      width: W*0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.asset("assets/images/flyer.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("  Flyer Distribution",
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'OpenSans-Bold',
                    color: Color(0xFF333333)
                ),
              ),
              Row(
                children: [
                  Text("  Location :",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'OpenSans-Regular',
                        color: Color(0xFF808080)
                    ),
                  ),
                  Text(" Area 1, New Town, Kolkata ",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'OpenSans-Regular',
                        color: Color(0xFF333333)
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Text("  Pincode :",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'OpenSans-Regular',
                        color: Color(0xFF808080)
                    ),
                  ),
                  Text(" 700091 ",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'OpenSans-Regular',
                        color: Color(0xFF333333)
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text("  Date :",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'OpenSans-Regular',
                        color: Color(0xFF808080)
                    ),
                  ),
                  Text(" 17 May 2022 ",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'OpenSans-Regular',
                        color: Color(0xFF333333)
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
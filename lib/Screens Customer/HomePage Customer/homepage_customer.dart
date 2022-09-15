import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Screens%20Customer/Rent%20Now%20Customer/rent_now_customer.dart';

class HomePageMainCustomer extends StatefulWidget {
  const HomePageMainCustomer({Key? key}) : super(key: key);

  @override
  State<HomePageMainCustomer> createState() => _HomePageMainCustomerState();
}

class _HomePageMainCustomerState extends State<HomePageMainCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: ScaleController.H * 0.03,),
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: ScaleController.H * 0.08,
                    padding: EdgeInsets.only(left: ScaleController.W * 0.05,
                        right: ScaleController.W * 0.05),
                    child: TextFormField(
                      cursorColor: teleGray,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search_rounded,
                            color: Color(0xFF8771A7),),
                          hintText: "Search radiology services here......",
                          hintStyle: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF4A4979),
                              fontFamily: "NunitoSans-Regular"
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: telestrokeBorder, width: 5),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(32))
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: telestrokeBorder, width: 5),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(32))
                          )
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight
                  , child: Padding(
                  padding: EdgeInsets.only(right: ScaleController.W * 0.06,),
                  child: Container(
                    height: ScaleController.H * 0.075,
                    width: ScaleController.W * 0.16,
                    child: Center(child:
                    Text("Go", style: TextStyle(
                        fontSize: 20,
                        fontFamily: "NunitoSans-Bold",
                        color: Colors.white
                    ),),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: teleBlue2,

                    ),
                  ),
                ),
                )
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: ScaleController.W * 0.03,
                  right: ScaleController.W * 0.03),
              child: Container(
                height: ScaleController.H * 0.24,
                child: InkWell(
                  onTap: (){
                    Get.to(RentNow());
                  },
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          buildListCardHome("assets/Images/radiology.png", "Radiology"),
                          SizedBox(width: ScaleController.W*0.02,)
                        ],
                      );
                    },

                  ),
                )
              ),
            ),
            SizedBox(height: ScaleController.H * 0.02,),
            Container(
              width: ScaleController.W * 0.95,
              child: Divider(
                color: Color(0xFF7978A0),
              ),
            ),
            SizedBox(height: ScaleController.H * 0.01,),
            Row(
              children: [
                Text("     Newest First ", style: TextStyle(
                    fontSize: 12,
                    fontFamily: "NunitoSans-Bold",
                    color: Color(0xFF184673)
                ),),
                Container(
                    height: ScaleController.H * 0.02,
                    child: VerticalDivider(color: Color(0xFF7978A0))),
                Text("  Price: High to Low ", style: TextStyle(
                    fontSize: 12,
                    fontFamily: "NunitoSans-Bold",
                    color: Color(0xFF184673)
                ),),
                Container(
                    height: ScaleController.H * 0.02,
                    child: VerticalDivider(color: Color(0xFF7978A0))),
                Text("  Price: Low to High", style: TextStyle(
                    fontSize: 12,
                    fontFamily: "NunitoSans-Bold",
                    color: Color(0xFF184673)
                ),),
              ],
            ),
            SizedBox(height: ScaleController.H * 0.01,),
            Container(
              width: ScaleController.W * 0.95,
              child: Divider(
                color: Color(0xFF7978A0),
              ),
            ),
            SizedBox(height: ScaleController.H * 0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("    Services",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "NunitoSans-Bold",
                          color: Color(0xFF184673)
                      ),),
                    SizedBox(width: ScaleController.H * 0.01,),
                    Padding(
                      padding: EdgeInsets.only(
                          top: ScaleController.H * 0.005),
                      child: Container(
                          width: ScaleController.W * 0.05,
                          child: Image.asset("assets/Images/divider.png")),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("See All     ",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: "NunitoSans-SemiBold",
                          color: teleBlue2
                      ),),
                  ],
                )
              ],
            ),
            SizedBox(height: ScaleController.H * 0.03,),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (BuildContext context,
                  int index) {
                return Column(
                  children: [
                    buildHomeCard(),
                    SizedBox(height: ScaleController.H * 0.01,)
                  ],
                );
              },)
          ],
        ),
      ),
    );
  }
  Container buildHomeCard() {
    return Container(
      height: ScaleController.H * 0.2,
      width: ScaleController.W * 0.9,
      decoration: BoxDecoration(
          color: Color(0xFFE0F4FF),
          borderRadius: BorderRadius.all(Radius.circular(16)),
          border: Border.all(color: Color(0xFFBFD6E4), width: 5)
      ),
      child: Padding(
        padding: EdgeInsets.only(left: ScaleController.W * 0.05),
        child: Row(
          children: [
            Container(
              height: ScaleController.H * 0.15,
              width: ScaleController.W * 0.31,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Images/imagine_list.png"),
                      fit: BoxFit.fill
                  ),
                  border: Border.all(color: Colors.white, width: 5),
                  borderRadius: BorderRadius.all(Radius.circular(16))
              ),
            ),
            SizedBox(width: ScaleController.W * 0.05,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Radiology",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "NunitoSans-Bold",
                      color: Color(0xFF184673)
                  ),),
                Text("Dicta sunt explicabo ratione ",
                  style: TextStyle(
                      fontSize: 11,
                      fontFamily: "NunitoSans-Regular",
                      color: Color(0xFF4A4979)
                  ),),
                SizedBox(height: ScaleController.H * 0.01,),
                Row(
                  children: [
                    Text("Price:",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: "NunitoSans-SemiBold",
                          color: teleBlue2
                      ),),
                    Text("  \$80.00",
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: "NunitoSans-SemiBold",
                          color: Color(0xFF4A4979)
                      ),),
                  ],
                ),
                SizedBox(height: ScaleController.H * 0.01,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: teleBlue2
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: ScaleController.W * 0.05,
                        right: ScaleController.W * 0.05,
                        top: ScaleController.H * 0.008,
                        bottom: ScaleController.H * 0.008),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_cart_outlined, color: Colors.white,
                          size: 15,),
                        Text("  Add to cart",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "NunitoSans-Bold",
                              color: Colors.white
                          ),),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Center buildListCardHome(String image, String title) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: ScaleController.H * 0.15,
            width: ScaleController.W * 0.32,
            decoration: BoxDecoration(
                color: Color(0xFFE0F4FF),
                borderRadius: BorderRadius.all(Radius.circular(16)),
                border: Border.all(color: telestrokeBorder, width: 5)
            ),
            child: Center(
              child: Image.asset(image),
            ),
          ),
          SizedBox(height: ScaleController.H * 0.01,),
          Text(title,
            style: TextStyle(
                fontSize: 13,
                fontFamily: "NunitoSans-SemiBold",
                color: Color(0xFF4A4979)
            ),
          ),
        ],
      ),
    );
  }
}

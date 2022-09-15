import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:teleradiology/Screens%20Customer/Rent%20Details/rentdetails.dart';

class RentNow extends StatefulWidget {
  const RentNow({Key? key}) : super(key: key);

  @override
  State<RentNow> createState() => _RentNowState();
}

class _RentNowState extends State<RentNow> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        backgroundColor: backgroundBlue,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: ScaleController.W*0.15),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: ScaleController.H * 0.08,
                        width: ScaleController.W*0.8,
                        child: TextFormField(
                          cursorColor: teleGray,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search_rounded,
                                color: Color(0xFF8771A7),),
                              hintText: "Search radiology services here....",
                              hintStyle: TextStyle(
                                  fontSize: 12,
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
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right:  ScaleController.W*0.08),
                    child: Align(
                      alignment: Alignment.centerRight
                      , child: Padding(
                      padding: EdgeInsets.only(right: ScaleController.W * 0.09,),
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
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: ScaleController.H*0.005,right: ScaleController.W*0.02),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: ScaleController.H * 0.065,
                        width: ScaleController.W * 0.14,
                        child: Center(child:
                        Container(
                            height: ScaleController.H*0.03,
                            child: Image.asset("assets/Images/filter_icon.png"))
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: Color(0xFFAFAED3),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: ScaleController.H*0.02,),

              Container(
                height: ScaleController.H*0.8,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        buildHomeCard(),
                        SizedBox(height: ScaleController.H*0.02,)
                      ],
                    );
                  },

                ),
              )
            ],
          ),
        )

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
                Text("Dicta sunt explicabo ratione cta su\nnt exp plicabo.",
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: "NunitoSans-Regular",
                      color: Color(0xFF4A4979)
                  ),),
                SizedBox(height: ScaleController.H * 0.01,),
                InkWell(
                  onTap: (){
                    Get.to(RentDetails());
                  },
                  child: Container(
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
                          Text("  Rent Now",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "NunitoSans-Bold",
                                color: Colors.white
                            ),),
                        ],
                      ),
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
}

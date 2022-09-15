import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:teleradiology/Screens Customer/HomePage Customer/homepage_customer.dart';
import 'package:teleradiology/Screens%20Customer/About%20Us%20Customer/about_us_customer.dart';
import 'package:teleradiology/Screens%20Customer/Create%20Profile%20Customer/create_profile_content.dart';
import 'package:teleradiology/Screens%20Customer/Create%20Profile%20Customer/create_profile_customer.dart';
import 'package:teleradiology/Screens%20Customer/My%20Cart%20Customer/my_cart.dart';
import 'package:teleradiology/Screens%20Customer/Payment%20Customer/payment_customer.dart';
import 'package:teleradiology/Screens%20Customer/Profile%20Customer/profile_customer.dart';
import 'package:teleradiology/Screens%20Customer/Sign%20In%20Customer/sign_in_page_customer.dart';
import 'package:teleradiology/Screens%20Customer/Terms%20And%20Condition%20Customer/terms_and_condition.dart';
import 'package:teleradiology/Screens%20Customer/Training%20Customer/training_customer.dart';



class HomePageCustomer extends StatefulWidget {
  const HomePageCustomer({Key? key}) : super(key: key);

  @override
  State<HomePageCustomer> createState() => _HomePageCustomerState();
}

class _HomePageCustomerState extends State<HomePageCustomer> {
  int _currentIndex = 0;
  var selectedCard = 'Service Information';
  var selectedIndex = 0;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final tabs = [
  HomePageMainCustomer(),
  TrainingCustomer(),
  CreateProfileContentCustomer(),
  MyCartCustomer(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundBlue,
        key: scaffoldKey,
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
              BottomNavigationBarItem(icon: Icon(Icons.model_training),
                  label: "Training",
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
        appBar: _currentIndex == 2 || _currentIndex == 3 ?
        AppBar(
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
          title: _currentIndex == 2 ? Text("Create Profile") : Text("My Cart") ,
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
        )  :
        AppBar(
          backgroundColor: backgroundBlue,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              scaffoldKey.currentState?.openDrawer();
            },
            child: Container(
                child: Icon(Icons.menu_open_outlined, color: darkPurple,)),
          ),
          centerTitle: true,
          title: Text("Teleradiology"),
          titleTextStyle: TextStyle(
              fontSize: 20,
              fontFamily: "NunitoSans-Bold",
              color: darkPurple
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16))
            ),
          ),
          actions: [InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(right: ScaleController.W * 0.04),
              child: Center(
                child: Stack(
                  children: [
                    Icon(Icons.notifications, color: teleGray2,),
                    Padding(
                      padding: EdgeInsets.only(left: ScaleController.W * 0.03,),
                      child: CircleAvatar(
                        backgroundColor: teleBlue,
                        radius: 7,
                        child: Text("3", style: TextStyle(
                            fontSize: 11,
                            color: Colors.white
                        ),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
          ],
        ),
        drawer: Drawer(
          child: Card(
            color: Color(0xFFECF7FE),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: ScaleController.W * 0.025,
                        top: ScaleController.H * 0.02),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 35,
                              child: Image.asset(
                                  "assets/Images/profile_pic.png"),
                            ),
                          ),
                        ),
                        SizedBox(width: ScaleController.W * 0.05,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Alex Brown",
                              style: TextStyle(
                                  fontFamily: "NunitoSans-SemiBold",
                                  fontSize: 18,
                                  color: Color(0xFF303E69)
                              ),
                            ),
                            Text("info@alexbrown.com",
                              style: TextStyle(
                                  fontFamily: "NunitoSans-Regular",
                                  fontSize: 13,
                                  color: Color(0xFF4A4979)
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: ScaleController.H * 0.01,),
                  Container(
                    child: Divider(
                      color: Color(0xFF7978A0),
                    ),
                  ),
                  buildDrawerCard(ScaleController.H, Icons.settings_outlined,
                      "  Service Information", 0),
                  buildDrawerCard(
                      ScaleController.H, Icons.person_outline_outlined,
                      "  Profile", 1),
                  buildDrawerCard(
                      ScaleController.H, Icons.lock_outline, " Change Password",
                      2),
                  buildDrawerCard(ScaleController.H, Icons.settings_outlined,
                      "  Service Request", 3),
                  buildDrawerCard(ScaleController.H, Icons.payment_outlined,
                      "  Payment Details", 4),
                  buildDrawerCard(
                      ScaleController.H, Icons.wallet_travel_sharp, "  About",
                      5),
                  buildDrawerCard(ScaleController.H, Icons.fact_check_outlined,
                      "  Terms & Conditions", 6),
                  SizedBox(height: ScaleController.H * 0.03,),
                  Container(
                    child: Divider(
                      color: Color(0xFF7978A0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: ScaleController.W * 0.05,
                        top: ScaleController.H * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: ScaleController.H * 0.06,
                          width: ScaleController.W * 0.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(32)),
                              color: teleBlue2
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: ScaleController.W * 0.05,
                                right: ScaleController.W * 0.05,
                                top: ScaleController.H * 0.008,
                                bottom: ScaleController.H * 0.008),
                            child: InkWell(
                              onTap: (){
                                Get.offAll(SignInPageCustomer());
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.logout_outlined, color: Colors.white,
                                    size: 18,),
                                  Text("  Logout",
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
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: tabs[_currentIndex]
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

  InkWell buildDrawerCard(double H, IconData icon, String name, index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedCard = name;
          selectedIndex = index;
          selectedItem(context, index);
        });
      },
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
          height: ScaleController.H * 0.07,
          width: ScaleController.W * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(32)),
            color: selectedCard == name ? Color(0xFFC2DFDC) : Color(0xFFECF7FE),
          ),
          padding: EdgeInsets.all(4),
          child: Padding(
            padding: EdgeInsets.only(left: ScaleController.W * 0.03),
            child: Row(
              children: [
                Icon(icon, size: 20,
                  color: selectedCard == name ? Color(0xFF303E69) : Color(
                      0xFF018BD3),),
                selectedCard == name ?
                Text(name,
                  style: TextStyle(
                    color: Color(0xFF303E69),
                    fontFamily: "Roboto-Regular",
                    fontSize: 18,
                  ),
                ) :
                Text(name,
                  style: TextStyle(
                    color: Color(0xFF303E69),
                    fontFamily: "Roboto-Regular",
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  selectedItem(BuildContext context, int index) {
    switch (index) {
      case 1:
        Get.to(ProfileCustomer());
    }
    switch (index){
      case 5:
        Get.to(AboutUsCustomer());
    }
    switch (index){
      case 6:
        Get.to(TermsAndConditionCustomer());
    }
    switch (index){
      case 4:
        Get.to(PaymentCustomer());
    }
    //   switch(index){
    //     case 1:
    //       Get.to(PreferedLocaEdit());
    //       break;
    //   }
    //   switch(index){
    //     case 2:
    //       Get.to(Shipments());
    //       break;
    //   }
    //   switch(index){
    //     case 3:
    //       Get.to(Payment());
    //       break;
    //   }
    //   switch(index){
    //     case 4:
    //       Get.to(Help());
    //       break;
    //   }
    //   switch(index){
    //     case 5:
    //       Get.to(InviteFriends());
    //       break;
    //   }
    //   switch(index){
    //     case 6:
    //       Get.to(LoginScreen());
    //       break;
    //   }
    // }
  }
}

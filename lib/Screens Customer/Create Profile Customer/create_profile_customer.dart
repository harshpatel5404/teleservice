import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:teleradiology/Screens%20Customer/Create%20Profile%20Customer/create_profile_content.dart';
import 'package:teleradiology/Screens%20Customer/HomePage%20Customer/homepage_customer.dart';
import 'package:teleradiology/Screens%20Customer/My%20Cart%20Customer/my_cart.dart';
import 'package:teleradiology/Screens%20Customer/Training%20Customer/training_customer.dart';

class CreateProfileCustomer extends StatefulWidget {
  const CreateProfileCustomer({Key? key}) : super(key: key);

  @override
  State<CreateProfileCustomer> createState() => _CreateProfileCustomerState();
}

class _CreateProfileCustomerState extends State<CreateProfileCustomer> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController address1 = TextEditingController();
  TextEditingController address2 = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  int _currentIndex = 2;

  final tabs = [
    HomePageMainCustomer(),
    TrainingCustomer(),
    CreateProfileContentCustomer(),
    MyCartCustomer(),
  ];

  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
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
      body: tabs[_currentIndex],

    );
  }

  Container buildTextFromProfile(double H,TextEditingController controller,IconData iconData,String hintText) {
    return Container(
                              height: ScaleController.H*0.07,
                              padding: EdgeInsets.only(left: ScaleController.W*0.05,right: ScaleController.W*0.05,),
                              child: TextFormField(
                                cursorColor: teleGray,
                                controller: controller,
                                decoration: InputDecoration(
                                    prefixIcon:  Icon(iconData,color: teleGray,),
                                    hintText: hintText,
                                    hintStyle: TextStyle(
                                        fontSize: 13,
                                        color: teleGray,
                                        fontFamily: "NunitoSans-Regular"
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.all(Radius.circular(32))
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent),
                                        borderRadius: BorderRadius.all(Radius.circular(32))
                                    )
                                ),
                              ),
                            );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teleradiology/Constants/servicecolors.dart';
import 'package:teleradiology/service screen/order_summery.dart';
import 'package:teleradiology/service%20screen/service_profile.dart';
import 'package:teleradiology/service screen/service_homepage.dart';
import 'package:teleradiology/service screen/widgets/drawer_widget.dart';

import 'most_visited.dart';
import 'order_history.dart';
import 'services.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class ServiceMainScreen extends StatefulWidget {
  ServiceMainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ServiceMainScreen> createState() => _ServiceMainScreenState();
}

class _ServiceMainScreenState extends State<ServiceMainScreen> {
  int _currentIndex = 0;
  List pageList = [
    ServiceHomePage(),
    ServiceProfileScreen(),
    ServiceOrderSummery(),
    MostVisitedScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: MyDrawer(),
        backgroundColor: _currentIndex == 2 ||  _currentIndex == 3 ?Color(0xffECF7FE) : background ,
        body: pageList[_currentIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: _currentIndex,
            selectedItemColor: Color(0xff303E69),
            unselectedItemColor: Color(0xFF7978A0),
            backgroundColor: Color(0xffE0F4FF),
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/Images/home.svg",
                    height: 22,
                  ),
                  label: "Home",
                  backgroundColor: Color(0xFFE0F4FF)),
              // BottomNavigationBarItem(
              //     icon: SvgPicture.asset(
              //       "assets/Images/analytics.svg",
              //       height: 22,
              //     ),
              //     label: "Analytics",
              //     backgroundColor: Color(0xFFE0F4FF)),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/Images/profile.svg",
                    height: 22,
                  ),
                  label: "Profile",
                  backgroundColor: Color(0xFFE0F4FF)),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                  ),
                  label: "Cart",
                  backgroundColor: Color(0xFFE0F4FF)),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.dashboard,
                  ),
                  label: "DashBoard",
                  backgroundColor: Color(0xFFE0F4FF)),
            ],
            selectedLabelStyle:
                TextStyle(fontFamily: 'NunitoSans', color: Color(0xFF4A4979)),
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

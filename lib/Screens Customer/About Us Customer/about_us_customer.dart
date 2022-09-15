import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:get/get.dart';

class AboutUsCustomer extends StatefulWidget {
  const AboutUsCustomer({Key? key}) : super(key: key);

  @override
  State<AboutUsCustomer> createState() => _AboutUsCustomerState();
}

class _AboutUsCustomerState extends State<AboutUsCustomer> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
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
          onTap: (){
            Get.back();
          },
          child: Container(
              child: Icon(Icons.arrow_back_ios,color: teleBlue2,size: 20,)),
        ),
        centerTitle: true,
        title: Text("About us"),
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFECF7FE),
              borderRadius: BorderRadius.all(Radius.circular(12))
            ),

            child:Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    height: ScaleController.H*0.06,
                    child: Row(
                      children: [
                        Text("S",
                          style: TextStyle(
                              color: Color(0xFF184673),
                              fontSize: 40,
                              fontFamily: "NunitoSans-Regular"
                          ),
                        ),
                        SizedBox(width: ScaleController.W*0.01,),
                        Padding(
                          padding:  EdgeInsets.only(top: ScaleController.H*0.01),
                          child: Text("cience dolores eos qui ratione voluptatem sequi ne\nsciunt. Neque porro quisquam est, qui dolorem ips",
                            style: TextStyle(
                                color: Color(0xFF184673),
                                fontSize: 12,
                                fontFamily: "NunitoSans-Regular"
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("magni dolores eos qui ratione voluptatem sequi nesciunt.\nNeque porro quisquam est, qui dolorem ipsum\nquia dolor sit amet, consectetur.",
                    style: TextStyle(
                        color: Color(0xFF184673),
                        fontSize: 12,
                        fontFamily: "NunitoSans-Regular"
                    ),
                  ),
                  SizedBox(height: ScaleController.H*0.02,),
                  Row(
                    children: [
                      Container(
                          height: ScaleController.H*0.06,
                          child: VerticalDivider(color: Color(0xFF0F87FF),thickness: 3,)),
                      SizedBox(width: ScaleController.W*0.005,),
                      Padding(
                        padding:  EdgeInsets.only(bottom:ScaleController.H*0.02),
                        child: Text("cience dolores eos qui ratione 4.9 sequi ne\nsciunt. Neque porro quisquam est, 2000 ratings.",
                          style: TextStyle(
                              color: Color(0xFF4A4979),
                              fontSize: 12,
                              fontFamily: "NunitoSans-Bold"
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: ScaleController.H*0.02,),
                  Text("Magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor\nsit amet, consectetur, adipisci velit, sed quia non numqu\nam eius modi tempora incidunt ut labore et dolore mag\nnam aliquam quaerat voluptatem.",
                    style: TextStyle(
                        color: Color(0xFF4A4979),
                        fontSize: 12,
                        fontFamily: "NunitoSans-Regular"
                    ),
                  ),
                  SizedBox(height: ScaleController.H*0.02,),
                  Text("Ut enim ad minima veniam, quis nostrum exercitationem \nullam corporis suscipit laboriosam, nisi ut aliquid ex ea\ncommodi consequatu.",
                    style: TextStyle(
                        color: Color(0xFF4A4979),
                        fontSize: 12,
                        fontFamily: "NunitoSans-Regular"
                    ),
                  ),
                  SizedBox(height: ScaleController.H*0.02,),
                  Text("Magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor\nsit amet, consectetur, adipisci velit, sed quia non numqu\nam eius modi tempora incidunt ut labore et dolore mag\nnam aliquam quaerat voluptatem.",
                    style: TextStyle(
                        color: Color(0xFF4A4979),
                        fontSize: 12,
                        fontFamily: "NunitoSans-Regular"
                    ),
                  ),
                  SizedBox(height: ScaleController.H*0.02,),
                  Text("Ut enim ad minima veniam, quis nostrum exercitationem \nullam corporis suscipit laboriosam, nisi ut aliquid ex ea\ncommodi consequatu.",
                    style: TextStyle(
                        color: Color(0xFF4A4979),
                        fontSize: 12,
                        fontFamily: "NunitoSans-Regular"
                    ),
                  ),
                  SizedBox(height: ScaleController.H*0.02,),
                  Text("Magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor\nsit amet, consectetur, adipisci velit, sed quia non numqu\nam eius modi tempora incidunt ut labore et dolore mag\nnam aliquam quaerat voluptatem.",
                    style: TextStyle(
                        color: Color(0xFF4A4979),
                        fontSize: 12,
                        fontFamily: "NunitoSans-Regular"
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Screens%20Customer/Training%20Customer/trainingdetails.dart';

class TrainingCustomer extends StatefulWidget {
  const TrainingCustomer({Key? key}) : super(key: key);

  @override
  State<TrainingCustomer> createState() => _TrainingCustomerState();
}

class _TrainingCustomerState extends State<TrainingCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: ScaleController.H*0.03,),
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
                          hintText: "Search Training and recreations",
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
            SizedBox(height: ScaleController.H*0.03,),
            ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    InkWell(
                        onTap: (){
                          Get.to(TrainingDetails());
                        },
                        child: buildHomeCard()),
                    SizedBox(height: ScaleController.H*0.02,)
                  ],
                );
              },
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),

            )

          ],
        ),
      )
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
                Text("Training",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "NunitoSans-Bold",
                      color: Color(0xFF184673)
                  ),),
                SizedBox(height: ScaleController.H * 0.012,),
                Text("Dicta sunt explicabo ratione cta su\nnt exp plicabo.",
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: "NunitoSans-Regular",
                      color: Color(0xFF4A4979)
                  ),),
                SizedBox(height: ScaleController.H * 0.01,),

              ],
            )
          ],
        ),
      ),
    );
  }
}

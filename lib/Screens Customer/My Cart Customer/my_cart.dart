import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:get/get.dart';


class MyCartCustomer extends StatefulWidget {
  const MyCartCustomer({Key? key}) : super(key: key);

  @override
  State<MyCartCustomer> createState() => _MyCartCustomerState();
}

class _MyCartCustomerState extends State<MyCartCustomer> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundBlue,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: ScaleController.W,
                decoration: BoxDecoration(
                  color: Color(0xFFECF7FE),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(24),topLeft: Radius.circular(24))
                ),
                child: Container(
                  height: ScaleController.H*0.73,
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return buildMyCart();
                        },
                      ),
                      SizedBox(height: ScaleController.H*0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Subtotal:",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "NunitoSans-SemiBold",
                                color: Color(0xFF4A4979)
                            ),),
                          Text("  \$1250.00",
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: "NunitoSans-SemiBold",
                                color: Color(0xFF184673)
                            ),),
                        ],
                      ),
                    ],
                  )
                )
              ),
              SizedBox(height: ScaleController.H*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("  \$1250.00",
                    style: TextStyle(
                        fontSize: 19,
                        fontFamily: "NunitoSans-Bold",
                        color: Color(0xFF184673)
                    ),),
                  Padding(
                    padding:  EdgeInsets.only(right: ScaleController.W*0.03),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: teleBlue2
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: ScaleController.W * 0.05,
                            right: ScaleController.W * 0.05,
                            top: ScaleController.H * 0.01,
                            bottom: ScaleController.H * 0.01),
                        child: Row(
                          children: [
                            Text("  Proceed to book",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "NunitoSans-Bold",
                                  color: Colors.white
                              ),),
                            SizedBox(width: ScaleController.W*0.02,),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: teleBlue2,
                                child: Icon(Icons.navigate_next_outlined,
                                  color: Colors.white,
                                  size: 14,),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: ScaleController.H*0.03,),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildMyCart() {
    return Padding(
              padding:  EdgeInsets.only(left: ScaleController.W*0.02,
                  right:ScaleController.W*0.02,
                  top:ScaleController.H*0.02,),
              child: Container(
                height: ScaleController.H * 0.2,
                width: ScaleController.W * 0.9,
                decoration: BoxDecoration(
                    color: Color(0xFFE0F4FF),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    border: Border.all(color: Color(0xFFBFD6E4), width: 5)
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: ScaleController.W * 0.03),
                  child: Row(
                    children: [
                      Container(
                        height: ScaleController.H * 0.15,
                        width: ScaleController.W * 0.31,
                        decoration: BoxDecoration(
                            color: Color(0xFFBFD6E4),
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
                          Row(
                            children: [
                              Text("Radiology",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "NunitoSans-Bold",
                                    color: Color(0xFF184673)
                                ),),
                              SizedBox(width: ScaleController.W*0.205,),
                              InkWell(
                                onTap: (){
                                  counterMinus();
                                },
                                child: Padding(
                                  padding:  EdgeInsets.only(bottom: ScaleController.H*0.02),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [BoxShadow(
                                          offset: Offset(0,2),
                                          blurRadius: 1,
                                          color: Colors.grey)]
                                    ),
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.white,
                                      child: Padding(
                                        padding:  EdgeInsets.only(top: ScaleController.H*0.01),
                                        child: Icon(Icons.maximize_sharp,size: 12,color: Color(0xFF363D79),),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text("Dicta sunt explicabo ratione ",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: "NunitoSans-Regular",
                                    color: Color(0xFF4A4979)
                                ),),
                              SizedBox(width: ScaleController.W*0.066,),
                              Text("${count}",style: TextStyle(
                                fontSize: 15,
                                fontFamily: "NunitoSans-Regular"
                              ),)
                            ],
                          ),
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
                              SizedBox(width: ScaleController.W*0.215,),
                              InkWell(
                                onTap: (){
                                  counterPlus();
                                },
                                child: Padding(
                                  padding:  EdgeInsets.only(top: ScaleController.H*0.015),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [BoxShadow(
                                            offset: Offset(0,2),
                                            blurRadius: 1,
                                            color: Colors.grey)]
                                    ),
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Color(0xFFD7ECFF),
                                      child: Icon(Icons.add,size: 14,color: Color(0xFF363D79),),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: ScaleController.H * 0.01,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
  }
  void counterPlus(){
    setState((){
      count++;
    });
  }
  void counterMinus(){
    if(count < 1){
      return;
    }
    setState((){
      count--;
    });
  }
}

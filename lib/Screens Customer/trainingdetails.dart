import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';
import 'package:get/get.dart';

class TrainingDetails extends StatefulWidget {
  const TrainingDetails({Key? key}) : super(key: key);

  @override
  State<TrainingDetails> createState() => _TrainingDetailsState();
}

class _TrainingDetailsState extends State<TrainingDetails> {
  @override
  Widget build(BuildContext context) {

    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffC2DFDC),
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
              title: Text("Training"),
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: ScaleController.H*0.01,),
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
                Container(
                  height: ScaleController.H*0.757,
                  decoration: BoxDecoration(
                      color: Color(0xffECF7FE),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50)
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: ScaleController.W*0.07),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: H*0.03,
                        ),
                        Text("Training 1",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "NunitoSans-Bold",
                            fontSize: 25,
                            color: Color(0xff184673),
                          ),),
                        SizedBox(
                          height: H*0.03,
                        ),
                        Text("magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum\nquia dolor sit amet, consectetur",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "NunitoSans-Regular",
                            fontSize: 11,
                            color: Color(0xff4A4979),
                          ),),
                        SizedBox(
                          height: H*0.015,
                        ),
                        Text("magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "NunitoSans-Regular",
                            fontSize: 11,
                            color: Color(0xff4A4979),
                          ),),
                        Divider(
                          height: H*0.075,
                          color: Color(0xffC2CADB),
                          thickness: 1,
                        ),
                        Text("Videos",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "NunitoSans-Bold",
                            fontSize: 25,
                            color: Color(0xff184673),
                          ),),
                        SizedBox(
                          height: H*0.025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            videoContainer(H, W),
                            videoContainer(H, W),
                            videoContainer(H, W),
                          ],
                        ),
                        SizedBox(
                          height: H*0.025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            videoContainer(H, W),
                            videoContainer(H, W),
                            videoContainer(H, W),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        )
    );
  }

  Container videoContainer(double H, double W) {
    return Container(
                      height: H*0.13,
                      width: W*0.26,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Images/imagine_list.png"),
                          fit: BoxFit.cover
                        ),
                        color: Color(0xff0F87FF),
                        boxShadow: [BoxShadow(
                          color: Color(0xffDBE9F2),
                          blurRadius: 10,
                          offset: Offset(2.5,3.5)
                        )],
                        borderRadius: BorderRadius.all(
                          Radius.circular(16)
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 5
                        )
                      ),
                    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teleradiology/Constants/servicecolors.dart';

class MostVisitedScreen extends StatefulWidget {
  const MostVisitedScreen({Key? key}) : super(key: key);

  @override
  State<MostVisitedScreen> createState() => _MostVisitedScreenState();
}

class _MostVisitedScreenState extends State<MostVisitedScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: background,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: textcolor,
              ),
              Text(
                "Most Visited",
                style: TextStyle(
                    fontFamily: "NunitoSans",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: textcolor),
              ),
              Stack(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Color(0xffBDC5D5),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.03,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffFCB128),
                      radius: 7,
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: size.height * 0.05),
        width: size.width,
        height: size.height * 0.83,
        decoration: BoxDecoration(
          color: Color(0xffECF7FE),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              "Most Visited Services",
              style: TextStyle(
                  fontFamily: "NunitoSans",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: textcolor),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              width: size.width,
              height: size.height * 0.65,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: size.height * 0.2,
                      width: size.height * 0.18,
                      decoration: BoxDecoration(
                        // image: DecorationImage(image: AssetImage("assetName")),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 7, color: Colors.white),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            child: Container(
                              height: size.height * 0.16,
                              width: size.width,
                              decoration: const BoxDecoration(
                                // color: Colors.amber,
                                image: DecorationImage(
                                    alignment: Alignment.center,
                                    fit: BoxFit.fitHeight,
                                    image: AssetImage(
                                      "assets/Images/service.png",
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            width: size.width * 0.32,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.favorite_border,
                                      color: Color(0xff395ABF),
                                      size: 18,
                                    ),
                                    Text(
                                      " 212",
                                      style: TextStyle(
                                          fontFamily: "NunitoSans",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff395ABF)),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Color(0xff395ABF),
                                      size: 18,
                                    ),
                                    Text(
                                      " 212",
                                      style: TextStyle(
                                          fontFamily: "NunitoSans",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff395ABF)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

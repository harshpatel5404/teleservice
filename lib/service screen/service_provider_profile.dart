import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../Constants/servicecolors.dart';

class ServiceProviderProfile extends StatefulWidget {
  const ServiceProviderProfile({Key? key}) : super(key: key);

  @override
  State<ServiceProviderProfile> createState() => _ServiceProviderProfileState();
}

class _ServiceProviderProfileState extends State<ServiceProviderProfile> {
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
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: textcolor,
                ),
              ),
              Text(
                "Profile",
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    margin: EdgeInsets.only(top: size.height * 0.1),
                    // height: size.height * 0.25,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffECF7FE),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "Alex Brown",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xff303E69),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Color(0xff96A3BD),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Text(
                                  "About",
                                  style: TextStyle(
                                      color: Color(0xff303E69),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit. Aspernatur aut odit aut fugit, sed quia consequuntur.",
                                style: TextStyle(
                                  color: Color(0xff78779F),
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.02,
                  left: size.width * 0.32,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(width: 5, color: Colors.white)),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/Images/profile.png"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Our Services",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color(0xff303E69),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.8,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff0A2577),
                          Color(0xff3859BE),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Services ${index + 1}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Skills",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color(0xff303E69),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              spacing: 10,
              children: [
                skillwidget("Radiologist"),
                skillwidget("skill 1"),
                skillwidget("skill 2"),
                skillwidget("skill 3"),
                skillwidget("skill 4"),
                skillwidget("skill 5"),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Our Values",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color(0xff303E69),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffECF7FE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit. Aspernatur aut odit aut fugit, sed quia consequuntur.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xff78779F),
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget skillwidget(text) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    margin: EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
      color: Color(0xffECF7FE),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text(
      "$text",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xff4A4979),
        fontSize: 15,
      ),
    ),
  );
}

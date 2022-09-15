import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/colors_customer.dart';
import 'package:teleradiology/Constants/dimensions.dart';

class CreateProfileContentCustomer extends StatefulWidget {
  const CreateProfileContentCustomer({Key? key}) : super(key: key);

  @override
  State<CreateProfileContentCustomer> createState() => _CreateProfileContentCustomerState();
}

class _CreateProfileContentCustomerState extends State<CreateProfileContentCustomer> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController address1 = TextEditingController();
  TextEditingController address2 = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundBlue,
     body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: ScaleController.H*0.01,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: H*0.49,
                  color: Color(0xFFECF7FE),
                  child: Container(
                      color: backgroundBlue,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter
                            ,child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFECF7FE),
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              height: H*0.42,
                              width: W*0.9,
                              child: Column(
                                children: [
                                  SizedBox(height: ScaleController.H*0.08,),
                                  buildTextFromProfile(H,firstNameController,Icons.person,"First Name"),
                                  SizedBox(height: ScaleController.H*0.02,),
                                  buildTextFromProfile(H,lastNameController,Icons.person,"Last Name"),
                                  SizedBox(height: ScaleController.H*0.02,),
                                  Container(
                                    height: ScaleController.H*0.12,
                                    padding: EdgeInsets.only(left: ScaleController.W*0.05,right: ScaleController.W*0.05,),
                                    child: TextFormField(
                                      cursorColor: teleGray,
                                      maxLines: 3,
                                      controller: aboutController,
                                      decoration: InputDecoration(
                                          prefixIcon:  Column(
                                            children: [
                                              Padding(
                                                padding:  EdgeInsets.only(top: ScaleController.H*0.025),
                                                child: Icon(Icons.edit,size: 20,color: teleGray,),
                                              ),
                                            ],
                                          ),
                                          hintText: "About",
                                          hintStyle: TextStyle(
                                              fontSize: 15,
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
                                  )
                                ],
                              )
                          ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(bottom: H*0.35),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: InkWell(
                                onTap: (){},
                                child: Container(
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 43,
                                      child: Container(
                                        height: H*0.12,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage("assets/Images/profile_pic.png"),
                                                fit: BoxFit.fill
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                SizedBox(height: H*0.03,),
              ],
            ),
            Container(
                decoration: BoxDecoration(
                  color: Color(0xFFECF7FE),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                height: H*0.45,
                width: W*0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: ScaleController.W*0.08,top: ScaleController.H*0.02),
                      child: Text("Address",style:
                      TextStyle(
                          fontSize: 17,
                          fontFamily: "NunitoSans-Bold",
                          color:Color(0xFF184673)
                      ),),
                    ),
                    SizedBox(height: ScaleController.H*0.02,),
                    buildTextFromProfile(H,address1,Icons.location_on_outlined,"Address 1"),
                    SizedBox(height: ScaleController.H*0.02,),
                    buildTextFromProfile(H,address2,Icons.location_on_outlined,"Address 2"),
                    SizedBox(height: ScaleController.H*0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: ScaleController.H*0.075,
                          width: ScaleController.W*0.42,
                          padding: EdgeInsets.only(left: ScaleController.W*0.05,),
                          child: TextFormField(
                            cursorColor: teleGray,
                            controller: aboutController,
                            decoration: InputDecoration(
                                hintText: "  City",
                                hintStyle: TextStyle(
                                    fontSize: 15,
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
                        ),
                        SizedBox(width: ScaleController.W*0.02,),
                        Container(
                          height: ScaleController.H*0.075,
                          width: ScaleController.W*0.42,
                          padding: EdgeInsets.only(right: ScaleController.W*0.02,),
                          child: TextFormField(
                            cursorColor: teleGray,
                            controller: aboutController,
                            decoration: InputDecoration(
                                hintText: "  State",
                                hintStyle: TextStyle(
                                    fontSize: 15,
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
                        )
                      ],
                    ),
                    SizedBox(height: ScaleController.H*0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: ScaleController.H*0.075,
                          width: ScaleController.W*0.42,
                          padding: EdgeInsets.only(left: ScaleController.W*0.05,),
                          child: TextFormField(
                            cursorColor: teleGray,
                            controller: aboutController,
                            decoration: InputDecoration(
                                hintText: "  Country",
                                hintStyle: TextStyle(
                                    fontSize: 15,
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
                        ),
                        SizedBox(width: ScaleController.W*0.02,),
                        Container(
                          height: ScaleController.H*0.075,
                          width: ScaleController.W*0.42,
                          padding: EdgeInsets.only(right: ScaleController.W*0.02,),
                          child: TextFormField(
                            cursorColor: teleGray,
                            controller: aboutController,
                            decoration: InputDecoration(
                                hintText: "  Zipcode",
                                hintStyle: TextStyle(
                                    fontSize: 15,
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
                        )
                      ],
                    )
                  ],
                )
            ),
            SizedBox(height: H*0.03,),
            Container(
                decoration: BoxDecoration(
                  color: Color(0xFFECF7FE),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                height: H*0.32,
                width: W*0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: ScaleController.W*0.08,top: ScaleController.H*0.02),
                      child: Text("Bank Details",style:
                      TextStyle(
                          fontSize: 17,
                          fontFamily: "NunitoSans-Bold",
                          color:Color(0xFF184673)
                      ),),
                    ),
                    SizedBox(height: ScaleController.H*0.02,),
                    buildTextFromProfile(H,address1,Icons.location_on_outlined,"Account No"),
                    SizedBox(height: ScaleController.H*0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: ScaleController.H*0.075,
                          width: ScaleController.W*0.5,
                          padding: EdgeInsets.only(left: ScaleController.W*0.05,),
                          child: TextFormField(
                            cursorColor: teleGray,
                            controller: aboutController,
                            decoration: InputDecoration(
                                hintText: "  Branch Name",
                                hintStyle: TextStyle(
                                    fontSize: 15,
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
                        ),
                        SizedBox(width: ScaleController.W*0.02,),
                        Container(
                          height: ScaleController.H*0.075,
                          width: ScaleController.W*0.35,
                          padding: EdgeInsets.only(right: ScaleController.W*0.02,),
                          child: TextFormField(
                            cursorColor: teleGray,
                            controller: aboutController,
                            decoration: InputDecoration(
                                hintText: "  Code",
                                hintStyle: TextStyle(
                                    fontSize: 15,
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
                        )
                      ],
                    ),
                    SizedBox(height: ScaleController.H*0.02,),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: ScaleController.W*0.05),
                          child: CircleAvatar(
                            backgroundColor: teleBlue2,
                            radius: 15,
                            child: Icon(Icons.add),
                          ),
                        ),
                        Text("  Add",style:
                        TextStyle(
                            fontSize: 17,
                            fontFamily: "NunitoSans-Bold",
                            color:Color(0xFF184673)
                        ),),
                      ],
                    )
                  ],
                )
            ),
            SizedBox(height: ScaleController.H*0.02,),
            Padding(
              padding:  EdgeInsets.only(left: ScaleController.W*0.05),
              child: Row(
                children: [
                  Container(
                    height: ScaleController.H*0.075,
                    width: ScaleController.W*0.42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                        color: teleBlue2
                    ),
                    child: Center(
                      child: Text("Cancle",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: "NunitoSans-Bold",
                            color:Colors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: ScaleController.W*0.05,),
                  Container(
                    height: ScaleController.H*0.075,
                    width: ScaleController.W*0.42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                        color: Color(0xFFDBE1F2)
                    ),
                    child: Center(
                      child: Text("Save",
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: "NunitoSans-Bold",
                            color:Color(0xFF4A4979)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScaleController.H*0.02,),
          ],
        ),
      ),
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

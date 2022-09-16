import 'package:flutter/material.dart';

class VideographyDetails extends StatefulWidget {
  const VideographyDetails({Key? key}) : super(key: key);

  @override
  State<VideographyDetails> createState() => _VideographyDetailsState();
}

class _VideographyDetailsState extends State<VideographyDetails> {

  int count = 0;
  void _incrementCount() {
    setState((){
      count++;
    });
  }
  void _decrementCount() {
    setState((){
      if (count > 0) count--;
    });
  }

  final items = ['Item1','Item2','Item3','Item4','Item5'];
  String? value;

  @override
  Widget build(BuildContext context) {

    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffC2DFDC),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: H*0.075),
                      child: Column(
                        children: [
                          Container(
                            height: H*0.525,
                            decoration: BoxDecoration(
                                color: Color(0xffECF7FE),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50)
                                )
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: W*0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(
                                    height: H*0.15,
                                  ),
                                  Text("X-Ray",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Gilroy-Bold",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: Color(0xff184673)
                                    ),),
                                  SizedBox(
                                    height: H*0.02,
                                  ),
                                  Text("magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum\nquia dolor sit amet, consectetur",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Gilroy-Regular",
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14,
                                        color: Color(0xff4A4979)
                                    ),),
                                  Divider(
                                    height: H*0.075,
                                    color: Color(0xffC2CADB),
                                    thickness: 1,
                                  ),
                                  Row(
                                    children: [
                                      Text("Body Part:",
                                        style: TextStyle(
                                            fontFamily: "Gilroy-Bold",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Color(0xff184673)
                                        ),),
                                      SizedBox(
                                        width: W*0.3,
                                      ),
                                      Text("Quantity:",
                                        style: TextStyle(
                                            fontFamily: "Gilroy-Bold",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Color(0xff184673)
                                        ),),
                                    ],
                                  ),
                                  SizedBox(
                                    height: H*0.02,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: W*0.04),
                                        alignment: AlignmentDirectional.center,
                                        height: H*0.06,
                                        width: W*0.4,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(32)
                                            )
                                        ),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton<String>(
                                            hint: Text("Select Part",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: "Gilory-Regular",
                                                  color: Color(0xff4A4979)
                                              ),),
                                            elevation: 0,
                                            isExpanded: true,
                                            dropdownColor: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                            ),
                                            value: value,
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color: Color(0xff0F87FF),
                                            ),
                                            iconSize: 30,
                                            items: items.map(buildMenuItem).toList(),
                                            onChanged: (value) => setState(() => this.value = value),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: W*0.075,
                                      ),
                                      Container(
                                        height: H*0.04,
                                        child: FloatingActionButton(
                                          elevation: 0,
                                          backgroundColor: Colors.white,
                                          onPressed:_decrementCount,
                                          child: Icon(Icons.remove,
                                              color: Color(0xff4A4979),size: W*0.05),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          height: H*0.05,
                                          width: W*0.1,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)
                                              )
                                          ),
                                          child: Text("${count}",
                                            style: TextStyle(
                                                height: H*0.002,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Gilroy-SemiBold",
                                                decoration: TextDecoration.none,
                                                color: Color(0xff4A4979)
                                            ),)),
                                      Container(
                                        height: H*0.04,
                                        child: FloatingActionButton(
                                          elevation: 0,
                                          backgroundColor: Colors.white,
                                          onPressed: _incrementCount,
                                          child: Icon(Icons.add,
                                              color: Color(0xff4A4979),size: W*0.05),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: H*0.375,
                            width: double.infinity,
                            color: Color(0xffCFE6F2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: W*0.05, vertical: H*0.05),
                                  child: Column(
                                    children: [
                                      bodyParts(H, W),
                                      SizedBox(
                                        height: H*0.02,
                                      ),
                                      bodyParts(H, W),
                                      SizedBox(
                                        height: H*0.02,
                                      ),
                                      bodyParts(H, W),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: Color(0xffECF7FE),
                            height: H*0.35,
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: W*0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: H*0.05,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Price Breakdown",
                                        style: TextStyle(
                                            fontFamily: "Gilroy-Bold",
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff184673)
                                        ),),
                                      Text("\$  1250",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            fontFamily: "Gilroy-Bold",
                                            color: Color(0xff184673)
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: H*0.02,
                                  ),
                                  Text("\$  250",
                                      style: TextStyle(
                                          fontFamily: "Gilroy-Bold",
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff184673)
                                      )
                                  ),
                                  SizedBox(
                                    height: H*0.02,
                                  ),
                                  Text("\$  150",
                                      style: TextStyle(
                                          fontFamily: "Gilroy-Bold",
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff184673)
                                      )
                                  ),
                                  Divider(
                                    height: H*0.075,
                                    thickness: 1,
                                    color: Color(0xffC2CADB),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Subtotal",
                                        style: TextStyle(
                                            fontFamily: "Gilroy-Regular",
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff4A4979)
                                        ),),
                                      SizedBox(
                                        width: W*0.05,
                                      ),
                                      Text("\$  1550",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                            fontFamily: "Gilroy-Bold",
                                            color: Color(0xff184673)
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: H*0.18,
                      width: W*0.36,
                      decoration: BoxDecoration(
                          color: Color(0xff2A8FEA),
                          border: Border.all(
                              color: Colors.white,
                              width: 7.5
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(16)
                          ),
                          boxShadow: [BoxShadow(
                              offset: Offset(0,0.5),
                              color: Color(0xffD7E6F0),
                              blurRadius: 10
                          )]
                      ),
                    ),
                  ),

                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: H*0.1,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row bodyParts(double H, double W) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                                color: Color(0xffCAE0EE),
                                blurRadius: 10,
                                offset: Offset(2.5,3.5)
                            )],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(16)
                          )
                        ),
                        height: H*0.075,
                        width: W*0.7,
                        child: Text("Body Part 1",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontFamily: "Gilroy-SemiBold",
                          color: Color(0xff4A4979)
                        ),),
                      ),
                      Container(
                        height: H*0.075,
                        width: W*0.15,
                        decoration: BoxDecoration(
                            color: Color(0xff0F87FF),
                            boxShadow: [BoxShadow(
                                color: Color(0xffC0D9E7),
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
                      )
                    ],
                  );
  }
  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            fontFamily: "Gilory-Regular",
            color: Color(0xff4A4979)
          ),
        )
      );
}

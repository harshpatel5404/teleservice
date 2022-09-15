// import 'package:flutter/material.dart';

// class ProfileSettings extends StatefulWidget {
//   const ProfileSettings({Key? key}) : super(key: key);

//   @override
//   State<ProfileSettings> createState() => _ProfileSettingsState();
// }

// class _ProfileSettingsState extends State<ProfileSettings> {
//   @override
//   Widget build(BuildContext context) {

//     var H = MediaQuery.of(context).size.height;
//     var W = MediaQuery.of(context).size.width;

//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Scaffold(
//           backgroundColor: Color(0xffC2DFDC),
//           body: Stack(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(top: H*0.075),
//                 child: Align(
//                   alignment: Alignment.topCenter,
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Color(0xffECF7FE),
//                         borderRadius: BorderRadius.all(
//                             Radius.circular(20)
//                         )
//                     ),
//                     height: H*0.6,
//                     width: W*0.9,
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(horizontal: W*0.15),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: [
//                           Container(
//                             alignment: AlignmentDirectional.center,
//                             height: H*0.075,
//                             width: W*0.65,
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.all(
//                                     Radius.circular(32)
//                                 )
//                             ),
//                             child: Text("Account Information",
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: "Gilroy-Regular",
//                                 color: Color(0xff184673),
//                               ),),
//                           ),
//                           SizedBox(
//                             height: H*0.015,
//                           ),
//                           Container(
//                             alignment: AlignmentDirectional.center,
//                             height: H*0.075,
//                             width: W*0.65,
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.all(
//                                     Radius.circular(32)
//                                 )
//                             ),
//                             child: Text("Email Address",
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: "Gilroy-Regular",
//                                 color: Color(0xff184673),
//                               ),),
//                           ),
//                           SizedBox(
//                             height: H*0.015,
//                           ),
//                           Container(
//                             alignment: AlignmentDirectional.center,
//                             height: H*0.075,
//                             width: W*0.65,
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.all(
//                                     Radius.circular(32)
//                                 )
//                             ),
//                             child: Text("Password",
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: "Gilroy-Regular",
//                                 color: Color(0xff184673),
//                               ),),
//                           ),
//                           SizedBox(
//                             height: H*0.015,
//                           ),
//                           Container(
//                             alignment: AlignmentDirectional.center,
//                             height: H*0.075,
//                             width: W*0.65,
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.all(
//                                     Radius.circular(32)
//                                 )
//                             ),
//                             child: Text("Shipping Details",
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 fontFamily: "Gilroy-Regular",
//                                 color: Color(0xff184673),
//                               ),),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.topCenter,
//                 child: CircleAvatar(
//                   backgroundColor: Colors.white,
//                   radius: 60,
//                   child: CircleAvatar(
//                     backgroundColor: Color(0xff0F87FF),
//                     radius: 50,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(
//                   top: H*0.1,
//                   left: W*0.57
//                 ),
//                 child: CircleAvatar(
//                   backgroundColor: Colors.white,
//                   radius: 18,
//                   child: CircleAvatar(
//                     backgroundColor: Color(0xff0F87FF),
//                     radius: 15,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

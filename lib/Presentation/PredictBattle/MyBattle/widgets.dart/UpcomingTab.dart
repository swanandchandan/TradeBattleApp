import 'package:flutter/material.dart';

class Upcoming_event_Tab extends StatelessWidget {
  Upcoming_event_Tab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        // Add your onTap logic here
      },
      child: Card(
        elevation: 4, // Adjust the shadow depth as needed
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Colors.grey[400]!), // Border color
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.90,
          height: MediaQuery.of(context).size.height * 0.16,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Image.asset(
                        'assets/images/himaliyansage2.png',
                        width: screenWidth * 0.15,
                        height: screenHeight * 0.088,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Himalayan\nSage",
                        style: TextStyle(
                          fontFamily: "Nexa",
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: screenHeight * 0.01, right: screenWidth * 0.02),
                      child: Container(
                        width: screenWidth * 0.30,
                        height: screenHeight * 0.06,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(247, 247, 247, 0.97),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(color: Colors.grey, blurRadius: 1.5),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/trophy_icon.png',
                                width: screenWidth * 0.07,
                                height: screenHeight * 0.03),
                            const Padding(
                              padding: EdgeInsets.only(top: 3, left: 5),
                              child: Text(
                                "5,000",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/Vector 150.png',
                color: Colors.grey,
                width: screenWidth * 0.80,
                fit: BoxFit.fill,
                height: 1,
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Starts |",
                      style: TextStyle(
                        fontFamily: "Nexa",
                        fontWeight: FontWeight.w400,
                        fontSize: screenHeight * 0.012,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      " 10 Jul, 09:45",
                      style: TextStyle(
                        fontFamily: "Nexa",
                        fontWeight: FontWeight.w700,
                        fontSize: screenHeight * 0.014,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.00,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Container(
                        width: screenWidth * 0.18,
                        height: screenHeight * 0.020,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 81, 53, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2),
                              child: Text(
                                "23:54",
                                style: TextStyle(
                                    fontFamily: "Nexa",
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    SizedBox(
                      width: screenWidth * 0.00,
                    ),
                    Text(
                      "Ends |",
                      style: TextStyle(
                        fontFamily: "Nexa",
                        fontWeight: FontWeight.w400,
                        fontSize: screenHeight * 0.012,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      " 10 Jul, 15:45",
                      style: TextStyle(
                        fontFamily: "Nexa",
                        fontWeight: FontWeight.w700,
                        fontSize: screenHeight * 0.014,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// class UpcomingEventTab extends StatelessWidget {
//   final String? eventTitle;
//   final String? eventImage;
//   final String? trophyIcon;
//   final String? startTime;
//   final String? endTime;
//   final String? countdown;

//   const UpcomingEventTab({
//     super.key,
//      this.eventTitle,
//      this.eventImage,
//      this.trophyIcon,
//      this.startTime,
//      this.endTime,
//      this.countdown,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     final double screenWidth = MediaQuery.of(context).size.width;

//     return GestureDetector(
//       onTap: () {
//         // Add your onTap logic here
//       },
//       child: Card(
//         elevation: 4, // Adjust the shadow depth as needed
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//           side: BorderSide(color: Colors.grey[400]!), // Border color
//         ),
//         child: Container(
//           width: screenWidth * 0.90,
//           height: screenHeight * 0.16,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             color: const Color.fromRGBO(255, 255, 255, 1),
//           ),
//           child: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: screenWidth * 0.025,
//                   vertical: screenHeight * 0.012,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(left: screenWidth * 0.01),
//                       child: Image.asset(
//                         eventImage,
//                         width: screenWidth * 0.15,
//                         height: screenHeight * 0.088,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: screenWidth * 0.025),
//                       child: Text(
//                         eventTitle,
//                         style: TextStyle(
//                           fontFamily: "Nexa",
//                           color: Colors.black,
//                           fontSize: screenHeight * 0.022,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                     ),
//                     Expanded(child: Container()),
//                     Padding(
//                       padding: EdgeInsets.only(
//                         top: screenHeight * 0.01,
//                         right: screenWidth * 0.02,
//                       ),
//                       child: Container(
//                         width: screenWidth * 0.30,
//                         height: screenHeight * 0.06,
//                         decoration: BoxDecoration(
//                           color: const Color.fromRGBO(247, 247, 247, 0.97),
//                           borderRadius: BorderRadius.circular(12),
//                           boxShadow: const [
//                             BoxShadow(color: Colors.grey, blurRadius: 1.5),
//                           ],
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image.asset(
//                               trophyIcon,
//                               width: screenWidth * 0.07,
//                               height: screenHeight * 0.03,
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(
//                                   top: screenHeight * 0.002, left: 5),
//                               child: Text(
//                                 "5,000",
//                                 style: TextStyle(
//                                   fontFamily: "Nexa",
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w700,
//                                   fontSize: screenHeight * 0.02,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Divider(
//                 color: Colors.grey,
//                 thickness: 1,
//                 indent: screenWidth * 0.05,
//                 endIndent: screenWidth * 0.05,
//               ),
//               SizedBox(height: screenHeight * 0.01),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Starts |",
//                       style: TextStyle(
//                         fontFamily: "Nexa",
//                         fontWeight: FontWeight.w400,
//                         fontSize: screenHeight * 0.018,
//                         color: Colors.black,
//                       ),
//                     ),
//                     Text(
//                       " $startTime",
//                       style: TextStyle(
//                         fontFamily: "Nexa",
//                         fontWeight: FontWeight.w700,
//                         fontSize: screenHeight * 0.020,
//                         color: Colors.black,
//                       ),
//                     ),
//                     Spacer(),
//                     Container(
//                       width: screenWidth * 0.18,
//                       height: screenHeight * 0.03,
//                       decoration: BoxDecoration(
//                         color: const Color.fromRGBO(255, 81, 53, 1),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Center(
//                         child: Text(
//                           countdown,
//                           style: TextStyle(
//                             fontFamily: "Nexa",
//                             color: Colors.white,
//                             fontSize: screenHeight * 0.014,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Spacer(),
//                     Text(
//                       "Ends |",
//                       style: TextStyle(
//                         fontFamily: "Nexa",
//                         fontWeight: FontWeight.w400,
//                         fontSize: screenHeight * 0.018,
//                         color: Colors.black,
//                       ),
//                     ),
//                     Text(
//                       " $endTime",
//                       style: TextStyle(
//                         fontFamily: "Nexa",
//                         fontWeight: FontWeight.w700,
//                         fontSize: screenHeight * 0.020,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ButtonNextEntry extends StatefulWidget {
  const ButtonNextEntry({super.key});

  @override
  State<ButtonNextEntry> createState() => _ButtonNextEntryState();
}

class _ButtonNextEntryState extends State<ButtonNextEntry> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return  Column(
        children: [
          SizedBox(
            height: screenHeight * 0.020,
          ),
          Container(
            width: screenWidth * 0.440,
            height: screenHeight * 0.075,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(41, 41, 41, 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Grey shadow
                  spreadRadius: -5,
                  blurRadius: 15,
                  offset: const Offset(0, 12),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Positioned(
                    top: screenHeight * 0.005,
                    left: screenWidth * 0.020,
                    child: Row(
                      children: [
                        Text(
                          "1",
                          style: TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: "Nexa",
                              fontWeight: FontWeight.w700,
                              fontSize: screenWidth * 0.050),
                        ),
                        SizedBox(width: screenWidth * 0.015),
                        Padding(
                          padding:
                              EdgeInsets.only(bottom: screenHeight * 0.003),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            width: screenWidth * 0.003,
                            height: screenHeight * 0.02,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.020),
                        Text(
                          "2",
                          style: TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: "Nexa",
                              fontWeight: FontWeight.w300,
                              fontSize: screenWidth * 0.050),
                        ),
                        SizedBox(width: screenWidth * 0.015),
                        Text(
                          "Entry",
                          style: TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: "Nexa",
                              fontWeight: FontWeight.w300,
                              fontSize: screenWidth * 0.050),
                        ),
                        SizedBox(width: screenWidth * 0.020),
                        Image.asset(
                          "assets/images/Arrow_right.png",
                          width: screenWidth * 0.090,
                        )

                        // Padding(
                        //   padding: EdgeInsets.only(
                        //     left: screenHeight * 0.009,
                        //   ),
                        //   child: Text(
                        //     "No. of\nEntries",
                        //     style: TextStyle(
                        //       color: const Color.fromRGBO(255, 255, 255, 1),
                        //       fontFamily: "Nexa",
                        //       fontWeight: FontWeight.w700,
                        //       fontSize: screenWidth * 0.030,
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(width: screenWidth * 0.030),
                        // Container(
                        //   decoration: const BoxDecoration(
                        //       color: Color.fromRGBO(167, 51, 33, 1)),
                        //   width: screenWidth * 0.003,
                        //   height: screenHeight * 0.05,
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(
                        //     left: screenHeight * 0.009,
                        //   ),
                        //   child: Image.asset("assets/images/arrow-right.png"),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(
                        //       top: screenHeight * 0.009,
                        //       left: screenHeight * 0.015,
                        //       right: screenHeight * 0.015),
                        //   child: Text(
                        //     "1",
                        //     style: TextStyle(
                        //         color: const Color.fromRGBO(255, 255, 255, 1),
                        //         fontFamily: "Nexa",
                        //         fontSize: screenWidth * 0.060),
                        //   ),
                        // ),
                        // Image.asset("assets/images/arrow-left.png"),
                      ],
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.040,
                    left: screenWidth * 0.020,
                    child: Row(
                      children: [
                        Container(
                          width: screenWidth * 0.034,
                          height: screenHeight * 0.005,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(255, 0, 0, 1)),
                        ),
                        SizedBox(width: screenWidth * 0.030),
                        Container(
                          width: screenWidth * 0.034,
                          height: screenHeight * 0.005,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(255, 0, 0, 1)),
                        ),
                        SizedBox(width: screenWidth * 0.016),
                        Container(
                          width: screenWidth * 0.034,
                          height: screenHeight * 0.005,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(255, 0, 0, 1)),
                        ),
                        SizedBox(width: screenWidth * 0.016),
                        Container(
                          width: screenWidth * 0.034,
                          height: screenHeight * 0.005,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(255, 0, 0, 1)),
                        ),
                        SizedBox(width: screenWidth * 0.016),
                        Container(
                          width: screenWidth * 0.034,
                          height: screenHeight * 0.005,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(255, 0, 0, 1)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );
    
  }
}

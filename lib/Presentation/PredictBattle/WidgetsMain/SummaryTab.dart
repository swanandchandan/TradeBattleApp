import 'package:flutter/material.dart';

class Summarytab extends StatefulWidget {
  const Summarytab({super.key});

  @override
  State<Summarytab> createState() => _SummarytabState();
}

class _SummarytabState extends State<Summarytab> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Container(
          width: screenWidth * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromRGBO(247, 247, 247, 1),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.5), // Grey shadow
            //     spreadRadius: -4,
            //     blurRadius: 15,
            //     offset: const Offset(0, 0),
            //   ),
            // ]
          ),
          child: Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.038,
                right: screenWidth * 0.038,
                top: screenHeight * 0.030,
                bottom: screenHeight * 0.020),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.015),
                    child: Text(
                      "1.",
                      style: TextStyle(
                        fontFamily: "Nexa",
                        fontSize: screenWidth * 0.040,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nifty movement",
                        style: TextStyle(
                          fontFamily: "Nexa",
                          fontSize: screenWidth * 0.040,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: screenWidth * 0.25,
                            height: screenHeight * 0.030,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 211, 169, 1)
                                  .withOpacity(0.09),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                color: const Color.fromRGBO(0, 211, 169, 1),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: screenHeight * 0.002),
                                  child: Text(
                                    "200",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontSize: screenWidth * 0.030,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          const Color.fromRGBO(0, 211, 169, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.01,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: screenHeight * 0.002),
                                  child: Text(
                                    "Points",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontSize: screenWidth * 0.030,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          const Color.fromRGBO(0, 211, 169, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.02,
                          ),
                          Container(
                            width: screenWidth * 0.15,
                            height: screenHeight * 0.030,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 211, 169, 1),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: screenHeight * 0.002),
                                  child: Text(
                                    "1.5X",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontSize: screenWidth * 0.030,
                                      fontWeight: FontWeight.w700,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.008),
                    child: Column(children: [
                      Text(
                        "You Choose",
                        style: TextStyle(
                          fontFamily: "Nexa",
                          fontSize: screenWidth * 0.030,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Text(
                        "Bullish",
                        style: TextStyle(
                          color: const Color.fromRGBO(0, 211, 169, 1),
                          fontFamily: "Nexa",
                          fontSize: screenWidth * 0.033,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}

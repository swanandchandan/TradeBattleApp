import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JoinPredictCard extends StatefulWidget {
  const JoinPredictCard({super.key});

  @override
  State<JoinPredictCard> createState() => _JoinPredictCardState();
}

class _JoinPredictCardState extends State<JoinPredictCard> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      // color: const Color.fromRGBO(2, 246, 31, 1),
      height: screenHeight * 0.20,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 90,
            left: 40,
            child: Container(
              width: screenWidth * 0.80,
              height: screenHeight * 0.090,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color.fromRGBO(156, 156, 156, 1),
                ),
                color: const Color.fromRGBO(247, 247, 247, 1),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: screenHeight * 0.005),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: screenWidth * 0.04),
                        Text(
                          "Starts |",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight * 0.010,
                            color: const Color.fromRGBO(41, 41, 41, 1),
                          ),
                        ),
                        Text(
                          " 10 Jul, 09:45",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            fontWeight: FontWeight.w700,
                            fontSize: screenHeight * 0.011,
                            color: const Color.fromRGBO(41, 41, 41, 1),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Container(
                            width: screenWidth * 0.15,
                            height: screenHeight * 0.018,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 80, 53),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text(
                                    "23:54",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontSize: screenHeight * 0.010,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.00,
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Text(
                          "Ends |",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight * 0.010,
                            color: const Color.fromRGBO(41, 41, 41, 1),
                          ),
                        ),
                        Text(
                          " 10 Jul, 15:45",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            fontSize: screenHeight * 0.011,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(41, 41, 41, 1),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.04),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 20,
            child: Column(
              children: [
                // SizedBox(
                //   height: screenHeight * 0.04,
                // ),
                Column(
                  children: [
                    Container(
                      width: screenWidth * 0.90,
                      height: screenHeight * 0.14,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(
                            255, 255, 255, 1), // White background color
                        borderRadius:
                            BorderRadius.circular(15), // Circular borders
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey
                                .withOpacity(0.5), // Grey shadow color
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(
                                0, 5), // Shadow on sides and bottom
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(screenWidth * 0.018,
                                screenHeight * 0.010, screenWidth * 0.018, 0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      // color: Colors.red,
                                      ),
                                  child: Image.asset(
                                      width: 64,
                                      height: 74,
                                      "assets/images/himaliyansage2.png"),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      screenWidth * 0.015, 5, 0, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Head to Head",
                                        style: TextStyle(
                                            fontSize: screenWidth * 0.035,
                                            fontFamily: "Nexa",
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: screenHeight * 0.000),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0,
                                                  0, screenHeight * 0.005),
                                              child: Container(
                                                // color: Colors.black,
                                                child: Image.asset(
                                                    isAntiAlias: true,
                                                    filterQuality:
                                                        FilterQuality.high,
                                                    fit: BoxFit.cover,
                                                    width: 13,
                                                    height:
                                                        screenHeight * 0.015,
                                                    "assets/images/medal-star.png"),
                                              ),
                                            ),
                                            Text(
                                              "1stPrize 5,000",
                                              style: TextStyle(
                                                fontFamily: "Nexa",
                                                fontWeight: FontWeight.w700,
                                                fontSize: screenWidth * 0.030,
                                                color: const Color.fromRGBO(
                                                    255, 177, 51, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: screenHeight * 0.015),
                                        child: Image.asset(
                                          "assets/images/Vector 150.png",
                                          width: 120,
                                          color: const Color.fromARGB(
                                              255, 134, 132, 132),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: screenHeight * 0.003),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0.000,
                                                  0,
                                                  screenWidth * 0.004,
                                                  screenHeight * 0.003),
                                              child: Container(
                                                // color: Colors.red,
                                                child: Image.asset(
                                                  filterQuality:
                                                      FilterQuality.high,
                                                  fit: BoxFit.cover,
                                                  height: screenHeight * 0.014,
                                                  isAntiAlias: true,
                                                  width: 14,
                                                  "assets/images/Spots.png",
                                                  color: const Color.fromRGBO(
                                                      41, 41, 41, 1),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "120",
                                              style: TextStyle(
                                                fontFamily: "Nexa",
                                                fontSize: screenWidth * 0.028,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1),
                                              ),
                                            ),
                                            Text(
                                              " Spots Left",
                                              style: TextStyle(
                                                fontFamily: "Nexa",
                                                fontSize: screenWidth * 0.030,
                                                color: const Color.fromRGBO(
                                                    41, 41, 41, 1),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: screenHeight * 0.00,
                                          right: screenWidth * 0.02),
                                      child: Container(
                                        width: screenWidth * 0.25,
                                        height: screenHeight * 0.04,
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              247, 247, 247, 0.97),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 1.5),
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                'assets/images/trophy_icon.png',
                                                width: screenWidth * 0.045,
                                                height: screenHeight * 0.030),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 3, left: 5),
                                              child: Text(
                                                "5,000",
                                                style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: screenWidth * 0.02),
                                      child: Container(
                                        width: screenWidth * 0.22,
                                        height: screenHeight * 0.025,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(0, 211, 169, 1),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(
                                                6), // Bottom-left circular border
                                            bottomRight: Radius.circular(6),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 1.5),
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                'assets/images/TBcurrency.png',
                                                width: screenWidth * 0.03,
                                                height: screenHeight * 0.02),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 3, left: 5),
                                              child: Text(
                                                "5,000",
                                                style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.005),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(0, 211, 169, 1)),
                                borderRadius: BorderRadius.circular(05),
                                color: const Color.fromRGBO(0, 211, 169, 1)
                                    .withOpacity(0.1),
                              ),
                              width: screenWidth * 0.85,
                              height: screenHeight * 0.025,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/Single_entry.png',
                                      width: 11,
                                      height: screenHeight * 0.04,
                                      color:
                                          const Color.fromRGBO(41, 41, 41, 1),
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Text(
                                      "Single Entry",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontSize: screenHeight * 0.012,
                                        fontWeight: FontWeight.normal,
                                        color:
                                            const Color.fromRGBO(41, 41, 41, 1),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Image.asset(
                                      'assets/images/group.png',
                                      width: 13,
                                      height: screenHeight * 0.02,
                                      color:
                                          const Color.fromRGBO(41, 41, 41, 1),
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Text(
                                      "Flexible",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontSize: screenHeight * 0.012,
                                        fontWeight: FontWeight.normal,
                                        color:
                                            const Color.fromRGBO(41, 41, 41, 1),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Image.asset(
                                      'assets/images/cup.png',
                                      width: 13,
                                      height: screenHeight * 0.02,
                                      color:
                                          const Color.fromRGBO(41, 41, 41, 1),
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Text(
                                      "45%",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontSize: screenHeight * 0.012,
                                        fontWeight: FontWeight.normal,
                                        color:
                                            const Color.fromRGBO(41, 41, 41, 1),
                                      ),
                                    ),
                                    Text(
                                      "Winners",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontSize: screenHeight * 0.012,
                                        fontWeight: FontWeight.normal,
                                        color:
                                            const Color.fromRGBO(41, 41, 41, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

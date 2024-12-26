import 'package:flutter/material.dart';

class PointsPopup extends StatefulWidget {
  const PointsPopup({super.key});

  @override
  State<PointsPopup> createState() => _PointsPopupState();
}

class _PointsPopupState extends State<PointsPopup> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.030, right: screenWidth * 0.030),
        child: Column(children: [
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Container(
            width: screenWidth * 0.999,
            height: screenHeight * 0.13,
            decoration: const BoxDecoration(
              // color: Color.fromRGBO(0, 211, 169, 1),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 77, 124, 254),
                  Color.fromARGB(255, 151, 71, 255),
                ],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Whooo!",
                  style: TextStyle(
                    fontFamily: "Nexa",
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: screenHeight * 0.045,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Stack(children: [
            Container(
              width: screenWidth * 0.999,
              height: screenHeight * 0.80,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            Container(
              width: screenWidth * 0.999,
              height: screenHeight * 0.60,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 4),
                    blurRadius: 7.5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Text(
                    "You Scored",
                    style: TextStyle(
                        fontFamily: "Nexa",
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: screenWidth * 0.040,
                        fontWeight: FontWeight.w700,
                        height: 1),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Text(
                    "200",
                    textHeightBehavior: const TextHeightBehavior(
                      applyHeightToFirstAscent: false,
                      applyHeightToLastDescent: false,
                    ),
                    style: TextStyle(
                      fontFamily: "Nexa",
                      color: const Color.fromRGBO(0, 211, 169, 1),
                      fontSize: screenWidth * 0.300,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Points",
                    textHeightBehavior: const TextHeightBehavior(
                      applyHeightToFirstAscent: false,
                      applyHeightToLastDescent: false,
                    ),
                    style: TextStyle(
                      fontFamily: "Nexa",
                      color: const Color.fromRGBO(0, 211, 169, 1),
                      fontSize: screenWidth * 0.090,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.010),
                    child: Container(
                      width: screenWidth * 0.850,
                      height: screenHeight * 0.20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(247, 247, 247, 1)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Please wait until Leader Board \nis getting generated",
                            style: TextStyle(
                              fontFamily: "Nexa",
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Container(
                            width: screenWidth * 0.700,
                            height: screenHeight * 0.001,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Text(
                            "                   View it later under\nMy Battles > Time Battle > Completed \n                            section",
                            style: TextStyle(
                              fontFamily: "Nexa",
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                top: screenHeight * 0.180,
                left: screenWidth * 0.650,
                child: Image.asset(
                  "assets/images/Hourglass.png",
                )),
            Positioned(
              top: 420,
              left: 15,
              child: GestureDetector(
                onTap: () {
                  // Navigator.pop(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const EntryFeeScreen()),
                  // );
                },
                child: Container(
                  width: screenWidth * 0.85,
                  height: screenHeight * 0.07,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.03,
                      ),
                      Text(
                        "close",
                        style: TextStyle(
                          fontFamily: "Nexa",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight * 0.025,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.03,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}

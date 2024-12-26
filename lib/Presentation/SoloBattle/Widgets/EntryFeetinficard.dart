import 'package:flutter/material.dart';

class Entryfeetinfocard extends StatefulWidget {
  const Entryfeetinfocard({super.key});

  @override
  State<Entryfeetinfocard> createState() => _EntryfeetinfocardState();
}

class _EntryfeetinfocardState extends State<Entryfeetinfocard> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 230,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.000,
              // left: 18,
              child: Container(
                width: screenWidth * 0.999,
                height: screenHeight * 0.145,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(83, 71, 203, 1),
                      Color.fromRGBO(41, 33, 115, 1),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: screenHeight * 0.025, right: screenHeight * 0.025),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: screenHeight * 0.055,
                            left: screenWidth * 0.020),
                        child: Image.asset(
                          fit: BoxFit.fill,
                          "assets/images/trophy_icon.png",
                          width: screenWidth * 0.130,
                          height: screenHeight * 0.060,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.025,
                            top: screenHeight * 0.020),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Prize Upto",
                              style: TextStyle(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: "Nexa",
                                fontSize: screenWidth * 0.030,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "5000",
                              style: TextStyle(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: "Nexa",
                                  fontSize: screenWidth * 0.080,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.00,
                            screenHeight * 0.020,
                            screenWidth * 0.00,
                            screenHeight * 0.00),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: screenWidth * 0.40,
                              height: screenHeight * 0.030,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(
                                  255,
                                  0,
                                  211,
                                  169,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenHeight * 0.001),
                                    child: Text(
                                      "Entry Fee",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        color: Colors.white,
                                        fontSize: screenWidth * 0.030,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.02,
                                  ),
                                  Image.asset(
                                    'assets/images/TBcurrency.png',
                                    width: screenWidth * 0.045,
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.02,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenHeight * 0.003),
                                    child: Text(
                                      "1,500",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        color: Colors.white,
                                        fontSize: screenWidth * 0.032,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  screenWidth * 0.00,
                                  screenHeight * 0.009,
                                  screenWidth * 0.00,
                                  screenHeight * 0.00),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Spots.png",
                                    fit: BoxFit.fill,
                                    width: screenWidth * 0.040,
                                    height: screenHeight * 0.016,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.004,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        screenWidth * 0.00,
                                        screenHeight * 0.003,
                                        screenWidth * 0.00,
                                        screenHeight * 0.000),
                                    child: Text(
                                      "125+ players playing",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        color: Colors.white,
                                        fontSize: screenWidth * 0.030,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.095,
              // left: 18,
              child: Container(
                width: screenWidth * 0.999,
                height: screenHeight * 0.150,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(233, 230, 255, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.035,
                      screenHeight * 0.015,
                      screenWidth * 0.035,
                      screenHeight * 00),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text.rich(
                            TextSpan(
                                text:
                                    "From below stocks which stock \nwill perform",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.035,
                                  fontFamily: "Nexa",
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                                children: [
                                  TextSpan(
                                    text: "  Positively.",
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.035,
                                      fontFamily: "Nexa",
                                      fontWeight: FontWeight.w700,
                                      color:
                                          const Color.fromRGBO(0, 211, 169, 1),
                                    ),
                                  )
                                ]),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            width: screenWidth * 0.290,
                            height: screenHeight * 0.080,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: screenHeight * 0.008),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Ends In",
                                    style: TextStyle(
                                      color: const Color.fromRGBO(
                                          156, 156, 156, 1),
                                      fontFamily: "Nexa",
                                      fontSize: screenWidth * 0.030,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "13:03",
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            254, 100, 95, 1),
                                        fontFamily: "Nexa",
                                        fontSize: screenWidth * 0.068,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.000,
                            screenHeight * 0.000,
                            screenWidth * 0.010,
                            screenHeight * 0.009),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1)),
                          width: screenWidth * 0.950,
                          height: screenHeight * 0.001,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.000,
                            screenHeight * 0.000,
                            screenWidth * 0.010,
                            screenHeight * 0.018),
                        child: Row(
                          children: [
                            Text(
                              "Starts |",
                              style: TextStyle(
                                fontFamily: "Nexa",
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.023,
                                color: const Color.fromRGBO(41, 41, 41, 1),
                              ),
                            ),
                            Text(
                              " 10 Jul, 09:45",
                              style: TextStyle(
                                fontFamily: "Nexa",
                                fontWeight: FontWeight.w700,
                                fontSize: screenWidth * 0.026,
                                color: const Color.fromRGBO(41, 41, 41, 1),
                              ),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Text(
                              "Starts |",
                              style: TextStyle(
                                fontFamily: "Nexa",
                                fontWeight: FontWeight.w400,
                                fontSize: screenWidth * 0.023,
                                color: const Color.fromRGBO(41, 41, 41, 1),
                              ),
                            ),
                            Text(
                              " 10 Jul, 09:45",
                              style: TextStyle(
                                fontFamily: "Nexa",
                                fontWeight: FontWeight.w700,
                                fontSize: screenWidth * 0.026,
                                color: const Color.fromRGBO(41, 41, 41, 1),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HimalayanInfoCard extends StatefulWidget {
  const HimalayanInfoCard({super.key});

  @override
  State<HimalayanInfoCard> createState() => _HimalayanInfoCardState();
}

class _HimalayanInfoCardState extends State<HimalayanInfoCard> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            color: const Color.fromRGBO(234, 234, 234, 1),
            width: double.infinity,
            height: screenHeight * 0.30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      width: screenWidth * 0.25,
                      height: screenHeight * 0.030,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Questions",
                            style: TextStyle(
                              fontFamily: "Nexa",
                              fontSize: screenWidth * 0.030,
                              fontWeight: FontWeight.normal,
                              color: const Color.fromRGBO(41, 41, 41, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      height: screenHeight * 0.002,
                      width: screenWidth * 0.06,
                    ),
                    Container(
                      width: screenWidth * 0.25,
                      height: screenHeight * 0.030,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(217, 217, 217, 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Multipler",
                            style: TextStyle(
                              fontFamily: "Nexa",
                              fontSize: screenWidth * 0.030,
                              fontWeight: FontWeight.normal,
                              color: const Color.fromRGBO(138, 138, 138, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: const Color.fromRGBO(138, 138, 138, 1),
                      height: screenHeight * 0.002,
                      width: screenWidth * 0.06,
                    ),
                    Container(
                      width: screenWidth * 0.25,
                      height: screenHeight * 0.030,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(41, 41, 41, 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "join",
                            style: TextStyle(
                              fontFamily: "Nexa",
                              fontSize: screenWidth * 0.030,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                )
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: double.infinity,
            height: screenHeight * 0.23,
            color: const Color.fromRGBO(74, 74, 74, 1),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Transform.translate(
                    offset: const Offset(0, kToolbarHeight * 6),
                    child: Transform.scale(
                      scale: 5.2,
                      child: ColorFiltered(
                        colorFilter: const ColorFilter.matrix(<double>[
                          -1.0, 0.0, 0.0, 0.0, 255.0, //
                          0.0, -1.0, 0.0, 0.0, 255.0, //
                          0.0, 0.0, -1.0, 0.0, 255.0, //
                          0.0, 0.0, 0.0, 1.0, 0.0, //
                        ]),
                        child: Opacity(
                          opacity: 0.95,
                          child:
                              SvgPicture.asset("assets/svg/Layered_shapd.svg"),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: screenWidth * 0.05,
                  left: screenWidth * 0.06,
                  child: Image.asset(
                    "assets/images/himaliyansage.png",
                  ),
                ),
                Positioned(
                  top: screenWidth * 0.06,
                  left: screenWidth * 0.24,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Himalayan Sage",
                        style: TextStyle(
                          fontFamily: "Nexa",
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: screenWidth * 0.040,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Image.asset(
                          'assets/images/Vector 150.png',
                          // fit: BoxFit.fill,
                          color: const Color.fromARGB(255, 217, 217, 217),
                          width: screenWidth * 0.35,
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            isAntiAlias: true,
                            'assets/images/Spots.png',
                            fit: BoxFit.fitHeight,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            // width: 15,
                            height: 13,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3, top: 6),
                            child: Text(
                              "120",
                              style: TextStyle(
                                fontFamily: "Nexa",
                                color: Colors.white,
                                fontSize: screenWidth * 0.030,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3, top: 6),
                            child: Text(
                              "/200 Spots",
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
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.009),
                        child: Container(
                          width: screenWidth * 0.35,
                          height: screenHeight * 0.025,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
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
                                padding:
                                    EdgeInsets.only(top: screenHeight * 0.001),
                                child: Text(
                                  "Entry  |",
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
                                width: 15,
                                height: 13,
                              ),
                              SizedBox(
                                width: screenWidth * 0.02,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: screenHeight * 0.003),
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
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: screenWidth * 0.05,
                  left: screenWidth * 0.65,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(255, 177, 51, 1)),
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromRGBO(234, 234, 234, 0.35),
                    ),
                    width: screenWidth * 0.30,
                    height: screenHeight * 0.09,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.010,
                        ),
                        Image.asset('assets/images/trophy_icon.png',
                            width: screenWidth * 0.07,
                            height: screenHeight * 0.038),
                        SizedBox(
                          height: screenHeight * 0.007,
                        ),
                        Text(
                          "5,000",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.045,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: screenWidth * 0.27,
                  left: screenWidth * 0.06,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromRGBO(255, 255, 255, 1)
                          .withOpacity(0.10),
                    ),
                    width: screenWidth * 0.89,
                    height: screenHeight * 0.03,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: screenWidth * 0.04),
                        Text(
                          "Starts |",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.023,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          " 10 Jul, 09:45",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.025,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(bottom: screenHeight * 0.002),
                          child: Container(
                            width: screenWidth * 0.16,
                            height: screenHeight * 0.016,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 80, 53),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: screenHeight * 0.002),
                                  child: Text(
                                    "23:54",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontSize: screenWidth * 0.023,
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
                            fontSize: screenWidth * 0.023,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          " 10 Jul, 15:45",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            fontSize: screenWidth * 0.025,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.04),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: screenWidth * 0.35,
                  left: screenWidth * 0.06,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(05),
                      color:
                          const Color.fromRGBO(45, 45, 45, 1).withOpacity(0.40),
                    ),
                    width: screenWidth * 0.89,
                    height: screenHeight * 0.03,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: Image.asset(
                              isAntiAlias: true,
                              'assets/images/Single_entry.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.01),
                          Text(
                            "Single Entry",
                            style: TextStyle(
                              fontFamily: "Nexa",
                              fontSize: screenWidth * 0.025,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: Image.asset(
                              isAntiAlias: true,
                              'assets/images/group.png',
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.01),
                          Text(
                            "Flexible",
                            style: TextStyle(
                              fontFamily: "Nexa",
                              fontSize: screenWidth * 0.025,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: screenHeight * 0.002),
                            child: Image.asset(
                              isAntiAlias: true,
                              'assets/images/cup.png',
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.01),
                          Text(
                            "45%",
                            style: TextStyle(
                              fontFamily: "Nexa",
                              fontSize: screenWidth * 0.025,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Winners",
                            style: TextStyle(
                              fontFamily: "Nexa",
                              fontSize: screenWidth * 0.025,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
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
        ),
      ],
    );
  }
}

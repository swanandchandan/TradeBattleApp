import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Joinscreenlayout extends StatefulWidget {
  const Joinscreenlayout({super.key});

  @override
  State<Joinscreenlayout> createState() => _JoinscreenlayoutState();
}

class _JoinscreenlayoutState extends State<Joinscreenlayout> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/Arrow_left.png")),
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.005),
              child: Text(
                "Time Battle",
                style: TextStyle(
                    fontFamily: "Nexa",
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w700),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/DoubtIcon.png",
                width: screenWidth * 0.060,
                height: screenHeight * 0.025,
              ),
            ),
            Expanded(child: Container()),
            Container(
              height: screenHeight * 0.038,
              width: screenWidth * 0.31,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 211, 169, 1),
                borderRadius: BorderRadius.circular(05),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/TBcurrency.png',
                    width: screenWidth * 0.08,
                    height: 23,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.005),
                    child: Text(
                      "45,000",
                      style: TextStyle(
                          fontFamily: "Nexa",
                          color: Colors.white,
                          fontSize: screenWidth * 0.045,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: screenHeight * 0.560,
                width: screenWidth * 0.999,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(221, 246, 241, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
              ),
              ClipRRect(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(7, 229, 185, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: double.infinity,
                  height: screenHeight * 0.225,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        top: screenHeight * 0.002,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Transform.translate(
                            offset: Offset(
                                screenWidth * 0.001, kToolbarHeight * 5.8),
                            child: Transform.scale(
                              scale: 06,
                              child: ColorFiltered(
                                colorFilter: const ColorFilter.matrix(<double>[
                                  -1.0, 0.0, 0.0, 0.0, 255.0, //
                                  0.0, -1.0, 0.0, 0.0, 255.0, //
                                  0.0, 0.0, -1.0, 0.0, 255.0, //
                                  0.0, 0.0, 0.0, 1.0, 0.0, //
                                ]),
                                child: Opacity(
                                  opacity: 0.30,
                                  child: SvgPicture.asset(
                                      "assets/svg/Layered_shapd.svg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: screenWidth * 0.10,
                        left: screenWidth * 0.06,
                        child: Image.asset(
                          "assets/images/himaliyansage.png",
                        ),
                      ),
                      Positioned(
                        top: screenWidth * 0.14,
                        left: screenWidth * 0.26,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Flash",
                              style: TextStyle(
                                fontFamily: "Nexa",
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: screenWidth * 0.040,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: screenHeight * 0.008),
                              child: Container(
                                width: screenWidth * 0.35,
                                height: screenHeight * 0.025,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 1),
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
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: screenWidth * 0.10,
                        left: screenWidth * 0.65,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(255, 177, 51, 1)),
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromRGBO(9, 136, 111, 1),
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
                        top: screenWidth * 0.32,
                        left: screenWidth * 0.06,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromRGBO(239, 255, 252, 1)),
                          width: screenWidth * 0.89,
                          height: screenHeight * 0.04,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: screenWidth * 0.04),
                              Text(
                                "Starts |",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.025,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              Text(
                                " 10 Jul, 09:45",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  fontWeight: FontWeight.w700,
                                  fontSize: screenWidth * 0.027,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: screenHeight * 0.002),
                                child: Container(
                                  width: screenWidth * 0.16,
                                  height: screenHeight * 0.016,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 255, 80, 53),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: screenHeight * 0.002),
                                        child: Text(
                                          "23:54",
                                          style: TextStyle(
                                            fontFamily: "Nexa",
                                            fontSize: screenWidth * 0.023,
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
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
                                  fontSize: screenWidth * 0.025,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              Text(
                                " 10 Jul, 15:45",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  fontSize: screenWidth * 0.027,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.04),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.245,
                left: screenWidth * 0.045,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "How to Play",
                      style: TextStyle(
                        fontFamily: "Nexa",
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: screenWidth * 0.055,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.009,
                    ),
                    Container(
                      height: screenHeight * 0.001,
                      width: screenWidth * 0.770,
                      color: const Color.fromRGBO(41, 41, 41, 1),
                    ),
                    SizedBox(
                      height: screenHeight * 0.015,
                    ),
                    Text(
                      "Watch the video or see the setps below",
                      style: TextStyle(
                        fontFamily: "Nexa",
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: screenHeight * 0.238,
                  left: screenWidth * 0.805,
                  child: Image.asset("assets/images/Hourglass.png")),
              Positioned(
                top: screenHeight * 0.350,
                left: screenWidth * 0.045,
                child: Container(
                  width: screenWidth * 0.90,
                  height: 160,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(41, 41, 41, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              // Positioned(
              //   top: screenHeight * 0.609,
              //   left: screenWidth * 0.045,
              //   child:
              // )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                right: screenWidth * 0.650, top: screenHeight * 0.020),
            child: Text(
              ". How to play",
              style: TextStyle(
                fontFamily: "Nexa",
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: screenWidth * 0.040,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

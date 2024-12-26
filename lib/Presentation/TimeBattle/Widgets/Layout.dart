import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
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
                height: screenHeight * 0.910,
                width: screenWidth * 0.999,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
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
                top: screenHeight * 0.250,
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * 0.999,
                      height: screenHeight * 0.19,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Row(
                                children: [
                                  Text(
                                    "Entry Fee",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: screenHeight * 0.018,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.03,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 2),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Image.asset(
                                        'assets/images/Icon_inquiry.png',
                                        width: 30,
                                        height: 34,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Image.asset(
                                    'assets/images/TBcurrency.png',
                                    width: 30,
                                    height: 34,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.02,
                                  ),
                                  Text(
                                    "1,500",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: screenHeight * 0.018,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Row(
                                children: [
                                  Text(
                                    "My Coins",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      color: Colors.black,
                                      fontSize: screenHeight * 0.016,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Text(
                                    "-1,500",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: screenHeight * 0.016,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Row(
                                children: [
                                  Text(
                                    "Bonus Coins",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      color: Colors.black,
                                      fontSize: screenHeight * 0.016,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: screenHeight * 0.016,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Center(
                      child: Container(
                        width: screenWidth * 0.999,
                        height: screenHeight * 0.17,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(234, 255, 251, 1)
                              .withOpacity(0.9),
                          border: Border.all(
                            color: const Color.fromRGBO(0, 211, 169, 1),
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.5,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  children: [
                                    const Column(
                                      children: [
                                        Text(
                                          "Current Balance",
                                          style: TextStyle(
                                              fontFamily: "Nexa",
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.03,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Image.asset(
                                        'assets/images/Icon_inquiry.png',
                                        width: 30,
                                        height: 34,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Image.asset(
                                      'assets/images/TBcurrency.png',
                                      width: 25,
                                      height: screenHeight * 0.05,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    Text(
                                      "8,500",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        color: Colors.black,
                                        fontSize: screenHeight * 0.019,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 6, 15, 6),
                                child: Row(
                                  children: [
                                    const Text(
                                      "My Coins",
                                      style: TextStyle(
                                          fontFamily: "Nexa",
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 2),
                                      child: Text(
                                        "-750",
                                        style: TextStyle(
                                          fontFamily: "Nexa",
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(255, 81, 53, 1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 6, 15, 6),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Bonus Coins",
                                      style: TextStyle(
                                          fontFamily: "Nexa",
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 4),
                                      child: Text(
                                        "0",
                                        style: TextStyle(
                                          fontFamily: "Nexa",
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                        ),
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
                  ],
                ),
              ),
              Positioned(
                top: screenHeight * 0.650,
                left: screenWidth * 0.230,
                child: Container(
                  width: screenWidth * 0.550,
                  height: screenHeight * 0.07,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 201, 182, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(255, 81, 53, 1),
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "  Add Coins/ Joining\nfee window closes at",
                          style: TextStyle(
                              fontSize: screenWidth * 0.030,
                              fontFamily: "Nexa",
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: screenWidth * 0.030,
                        ),
                        Text(
                          "9:15",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            color: const Color.fromRGBO(255, 81, 53, 1),
                            fontSize: screenHeight * 0.019,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.760,
                left: screenWidth * 0.024,
                child: GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => const Hurray1()),
                  //   );
                  // },
                  child: Container(
                    width: screenWidth * 0.95,
                    height: screenHeight * 0.07,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 211, 169, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Join",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Nexa",
                            ),
                          ),
                          Expanded(child: Container()),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              'assets/images/Arrow_right.png',
                              color: const Color.fromARGB(255, 255, 255, 255),
                              width: screenWidth * 0.09,
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   top: screenHeight * 0.245,
              //   left: screenWidth * 0.045,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Text(
              //         "How to Play",
              //         style: TextStyle(
              //           fontFamily: "Nexa",
              //           color: const Color.fromARGB(255, 0, 0, 0),
              //           fontSize: screenWidth * 0.055,
              //           fontWeight: FontWeight.w700,
              //         ),
              //       ),
              //       SizedBox(
              //         height: screenHeight * 0.009,
              //       ),
              //       Container(
              //         height: screenHeight * 0.001,
              //         width: screenWidth * 0.770,
              //         color: const Color.fromRGBO(41, 41, 41, 1),
              //       ),
              //       SizedBox(
              //         height: screenHeight * 0.015,
              //       ),
              //       Text(
              //         "Watch the video or see the setps below",
              //         style: TextStyle(
              //           fontFamily: "Nexa",
              //           color: const Color.fromARGB(255, 0, 0, 0),
              //           fontSize: screenWidth * 0.035,
              //           fontWeight: FontWeight.w400,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Positioned(
              //     top: screenHeight * 0.238,
              //     left: screenWidth * 0.805,
              //     child: Image.asset("assets/images/Hourglass.png")),
              // Positioned(
              //   top: screenHeight * 0.350,
              //   left: screenWidth * 0.045,
              //   child: Container(
              //     width: screenWidth * 0.90,
              //     height: 160,
              //     decoration: BoxDecoration(
              //       color: const Color.fromRGBO(41, 41, 41, 1),
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //   ),
              // ),
              // Positioned(
              //   top: screenHeight * 0.609,
              //   left: screenWidth * 0.045,
              //   child:
              // )
            ],
          ),
          // Padding(
          //   padding: EdgeInsets.only(
          //       right: screenWidth * 0.650, top: screenHeight * 0.020),
          //   child: Text(
          //     ". How to play",
          //     style: TextStyle(
          //       fontFamily: "Nexa",
          //       color: const Color.fromARGB(255, 0, 0, 0),
          //       fontSize: screenWidth * 0.040,
          //       fontWeight: FontWeight.w700,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

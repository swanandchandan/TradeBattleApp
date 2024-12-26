import 'package:dummy_tradebattle/Presentation/SoloBattle/PostEntryDelete.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/UpcomingEventTab.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/Widgets/EntryFeetinficard.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/Widgets/Entrylayout.dart';
import 'package:flutter/material.dart';

class SecondLayout extends StatefulWidget {
  const SecondLayout({super.key});

  @override
  State<SecondLayout> createState() => _SecondLayoutState();
}

class _SecondLayoutState extends State<SecondLayout> {
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
                "Solo Battle",
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
      body: SizedBox(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 195,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: const Entryfeetinfocard(),
                ),
                // Positioned(
                //   top: screenHeight * 0.010,
                //   left: 0,
                //   child: Container(
                //     width: screenWidth * 0.999,
                //     height: screenHeight * 0.145,
                //     decoration: const BoxDecoration(
                //       gradient: LinearGradient(
                //         begin: Alignment.bottomLeft,
                //         end: Alignment.bottomRight,
                //         colors: [
                //           Color.fromRGBO(83, 71, 203, 1),
                //           Color.fromRGBO(41, 33, 115, 1),
                //         ],
                //       ),
                //       borderRadius: BorderRadius.only(
                //         topLeft: Radius.circular(15),
                //         topRight: Radius.circular(15),
                //       ),
                //     ),
                //     child: Padding(
                //       padding: EdgeInsets.only(
                //           left: screenHeight * 0.025,
                //           right: screenHeight * 0.025),
                //       child: Row(
                //         children: [
                //           Padding(
                //             padding: EdgeInsets.only(
                //                 bottom: screenHeight * 0.055,
                //                 left: screenWidth * 0.020),
                //             child: Image.asset(
                //               fit: BoxFit.fill,
                //               "assets/images/trophy_icon.png",
                //               width: screenWidth * 0.130,
                //               height: screenHeight * 0.060,
                //             ),
                //           ),
                //           Padding(
                //             padding: EdgeInsets.only(
                //                 left: screenWidth * 0.025,
                //                 top: screenHeight * 0.020),
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Text(
                //                   "Prize Upto",
                //                   style: TextStyle(
                //                     color: const Color.fromRGBO(
                //                         255, 255, 255, 1),
                //                     fontFamily: "Nexa",
                //                     fontSize: screenWidth * 0.030,
                //                     fontWeight: FontWeight.w400,
                //                   ),
                //                 ),
                //                 Text(
                //                   "5000",
                //                   style: TextStyle(
                //                       color: const Color.fromRGBO(
                //                           255, 255, 255, 1),
                //                       fontFamily: "Nexa",
                //                       fontSize: screenWidth * 0.080,
                //                       fontWeight: FontWeight.w700),
                //                 ),
                //               ],
                //             ),
                //           ),
                //           Expanded(
                //             child: Container(),
                //           ),
                //           Padding(
                //             padding:
                //                 EdgeInsets.only(bottom: screenHeight * 0.048),
                //             child: Container(
                //               width: screenWidth * 0.290,
                //               height: screenHeight * 0.080,
                //               decoration: const BoxDecoration(
                //                   borderRadius: BorderRadius.all(
                //                     Radius.circular(5),
                //                   ),
                //                   color: Color.fromRGBO(255, 255, 255, 1)),
                //               child: Padding(
                //                 padding: EdgeInsets.only(
                //                     top: screenHeight * 0.008),
                //                 child: Column(
                //                   crossAxisAlignment:
                //                       CrossAxisAlignment.center,
                //                   children: [
                //                     Text(
                //                       "Ends In",
                //                       style: TextStyle(
                //                         color: const Color.fromRGBO(
                //                             156, 156, 156, 1),
                //                         fontFamily: "Nexa",
                //                         fontSize: screenWidth * 0.030,
                //                         fontWeight: FontWeight.w400,
                //                       ),
                //                     ),
                //                     Text(
                //                       "13:03",
                //                       style: TextStyle(
                //                           color: const Color.fromRGBO(
                //                               254, 100, 95, 1),
                //                           fontFamily: "Nexa",
                //                           fontSize: screenWidth * 0.068,
                //                           fontWeight: FontWeight.w700),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // Positioned(
                //   top: screenHeight * 0.120,
                //   left: 00,
                //   child: Container(
                //     width: screenWidth * 0.999,
                //     height: screenHeight * 0.115,
                //     decoration: const BoxDecoration(
                //       color: Color.fromRGBO(233, 230, 255, 1),
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(15),
                //       ),
                //     ),
                //     child: Padding(
                //       padding: EdgeInsets.fromLTRB(
                //           screenWidth * 0.030,
                //           screenHeight * 0.015,
                //           screenWidth * 0.030,
                //           screenHeight * 00),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text.rich(
                //             TextSpan(
                //                 text:
                //                     "From below stocks which stock will perform",
                //                 style: TextStyle(
                //                   fontSize: screenWidth * 0.035,
                //                   fontFamily: "Nexa",
                //                   color: const Color.fromRGBO(0, 0, 0, 1),
                //                 ),
                //                 children: [
                //                   TextSpan(
                //                     text: "\nPositively.",
                //                     style: TextStyle(
                //                       fontSize: screenWidth * 0.035,
                //                       fontFamily: "Nexa",
                //                       fontWeight: FontWeight.w700,
                //                       color: const Color.fromRGBO(
                //                           0, 211, 169, 1),
                //                     ),
                //                   )
                //                 ]),
                //           ),
                //           Expanded(
                //             child: Container(),
                //           ),
                //           Container(
                //             decoration: const BoxDecoration(
                //                 color: Color.fromRGBO(255, 255, 255, 1)),
                //             width: screenWidth * 0.850,
                //             height: screenHeight * 0.001,
                //           ),
                //           Padding(
                //             padding: EdgeInsets.fromLTRB(
                //                 screenWidth * 0.000,
                //                 screenHeight * 0.010,
                //                 screenWidth * 0.010,
                //                 screenHeight * 0.009),
                //             child: Row(
                //               children: [
                //                 Text(
                //                   "Starts |",
                //                   style: TextStyle(
                //                     fontFamily: "Nexa",
                //                     fontWeight: FontWeight.w400,
                //                     fontSize: screenWidth * 0.023,
                //                     color:
                //                         const Color.fromRGBO(41, 41, 41, 1),
                //                   ),
                //                 ),
                //                 Text(
                //                   " 10 Jul, 09:45",
                //                   style: TextStyle(
                //                     fontFamily: "Nexa",
                //                     fontWeight: FontWeight.w700,
                //                     fontSize: screenWidth * 0.026,
                //                     color:
                //                         const Color.fromRGBO(41, 41, 41, 1),
                //                   ),
                //                 ),
                //                 Expanded(
                //                   child: Container(),
                //                 ),
                //                 Text(
                //                   "Starts |",
                //                   style: TextStyle(
                //                     fontFamily: "Nexa",
                //                     fontWeight: FontWeight.w400,
                //                     fontSize: screenWidth * 0.023,
                //                     color:
                //                         const Color.fromRGBO(41, 41, 41, 1),
                //                   ),
                //                 ),
                //                 Text(
                //                   " 10 Jul, 09:45",
                //                   style: TextStyle(
                //                     fontFamily: "Nexa",
                //                     fontWeight: FontWeight.w700,
                //                     fontSize: screenWidth * 0.026,
                //                     color:
                //                         const Color.fromRGBO(41, 41, 41, 1),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           )
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: screenHeight * 0.62,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: screenWidth * 0.92,
                          height: screenHeight * 0.40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.5,
                              ),
                            ],
                          ),
                          // ignore: prefer_const_constructors
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  15,
                                  15,
                                  15,
                                  0,
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        const Text(
                                          "Entry Fee",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "(Per Entry)",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: screenHeight * 0.015),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.03,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           const Fee_breakdown()),
                                        // );
                                      },
                                      child: const Icon(Icons.info_outlined,
                                          size: 20),
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
                                      "1,500",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: screenHeight * 0.025,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 6),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Entry 1",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(0, 211, 169, 1),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Entrylayout(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: screenWidth * 0.20,
                                        height: screenHeight * 0.030,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "View Entry",
                                            style: TextStyle(
                                                fontSize: screenWidth * 0.030,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Postentrydelete()),
                                        );
                                      },
                                      child: Container(
                                        width: screenWidth * 0.12,
                                        height: screenHeight * 0.030,
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              255, 81, 53, 1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Icon(
                                          Icons.delete_forever,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 6),
                                child: Row(
                                  children: [
                                    const Text(
                                      "My Coins",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Text(
                                        "-1,500",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 6),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Bonus Coins",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Text(
                                        "0",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 22),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        child: Image.asset(
                                          'assets/images/Vector 150.png',
                                          color: Colors.grey,
                                          width: screenWidth * 0.12,
                                          height: screenHeight * 0.002,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 05, 15, 6),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Entry 1",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(0, 211, 169, 1),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (context) =>
                                        //         const Workshop_MobileLayout(),
                                        //   ),
                                        // );
                                      },
                                      child: Container(
                                        width: screenWidth * 0.20,
                                        height: screenHeight * 0.030,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "View Entry",
                                            style: TextStyle(
                                                fontSize: screenWidth * 0.030,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (context) =>
                                        //         const Post_deletion_screen(),
                                        //   ),
                                        // );
                                      },
                                      child: Container(
                                        width: screenWidth * 0.12,
                                        height: screenHeight * 0.030,
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              255, 81, 53, 1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Icon(
                                          Icons.delete_forever,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 6),
                                child: Row(
                                  children: [
                                    const Text(
                                      "My Coins",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Text(
                                        "-1,500",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 6),
                                child: Row(
                                  children: [
                                    const Text(
                                      "Bonus Coins",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Text(
                                        "0",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 10,
                                  left: 10,
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: screenWidth * 0.88,
                                    height: screenHeight * 0.07,
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(0, 211, 169, 1),
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: screenWidth * 0.03,
                                        ),
                                        const Text(
                                          "Total",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
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
                                          "3,000",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: screenHeight * 0.025,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.03,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Container(
                          width: screenWidth * 0.92,
                          height: screenHeight * 0.20,
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
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      const Column(
                                        children: [
                                          Text(
                                            "Current Balance",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.03,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: const Icon(Icons.info_outlined,
                                            size: 20),
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
                                          color: Colors.black,
                                          fontSize: screenHeight * 0.025,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 15, 6),
                                  child: Row(
                                    children: [
                                      const Text(
                                        "My Coins",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
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
                                            fontWeight: FontWeight.normal,
                                            color:
                                                Color.fromRGBO(255, 81, 53, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 15, 6),
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Bonus Coins",
                                        style: TextStyle(
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
                                            fontWeight: FontWeight.normal,
                                            color:
                                                Color.fromRGBO(255, 81, 53, 1),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        // Container(
        //   width: double.infinity,
        //   height: 100,
        //   color: const Color.fromRGBO(9, 150, 206, 1),
        // ),
      ),
    );
  }
}

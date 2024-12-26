import 'package:flutter/material.dart';

class Squizecard extends StatefulWidget {
  const Squizecard({super.key});

  @override
  State<Squizecard> createState() => _SquizecardState();
}

class _SquizecardState extends State<Squizecard> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Text(
                "From below stock which stock will perform Positively ?",
                style: TextStyle(
                  fontFamily: "Nexa",
                  fontWeight: FontWeight.w700,
                  fontSize: screenWidth * 0.050,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.040,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Container(
                        width: screenWidth * 0.99,
                        height: screenHeight * 0.06,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      Positioned(
                        left: screenWidth * 0.65,
                        // top: 10,
                        child: Container(
                          width: screenWidth * 0.30,
                          height: screenHeight * 0.06,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(233, 230, 255, 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: screenHeight * 0.008,
                              left: screenWidth * 0.125,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: screenHeight * 0.005),
                                  child: Image.asset(
                                    width: 15,
                                    height: 15,
                                    fit: BoxFit.fill,
                                    "assets/images/Spots.png",
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                Text(
                                  "45%",
                                  style: TextStyle(
                                    fontFamily: "Nexa",
                                    fontSize: screenWidth * 0.045,
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.02,
                        child: GestureDetector(
                          onTap: () {
                            print("ok tapped");
                          },
                          child: Container(
                            width: screenWidth * 0.70,
                            height: screenHeight * 0.06,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(79, 67, 194, 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "Bullish",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  fontSize: screenWidth * 0.040,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: screenHeight * 0.015,
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: screenHeight * 0.015,
            ),
            // Container(
            //   width: screenWidth * 0.40,
            //   height: screenHeight * 0.040,
            //   decoration: BoxDecoration(
            //     color: const Color.fromARGB(
            //       255,
            //       0,
            //       211,
            //       169,
            //     ),
            //     borderRadius: BorderRadius.circular(5),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Padding(
            //         padding: EdgeInsets.only(top: screenHeight * 0.001),
            //         child: Text(
            //           "Entry Fee",
            //           style: TextStyle(
            //             fontFamily: "Nexa",
            //             color: Colors.white,
            //             fontSize: screenWidth * 0.030,
            //             fontWeight: FontWeight.normal,
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         width: screenWidth * 0.02,
            //       ),
            //       Image.asset(
            //         'assets/images/TBcurrency.png',
            //         width: screenWidth * 0.045,
            //         height: 30,
            //       ),
            //       SizedBox(
            //         width: screenWidth * 0.02,
            //       ),
            //       Padding(
            //         padding: EdgeInsets.only(top: screenHeight * 0.003),
            //         child: Text(
            //           "1,500",
            //           style: TextStyle(
            //             fontFamily: "Nexa",
            //             color: Colors.white,
            //             fontSize: screenWidth * 0.032,
            //             fontWeight: FontWeight.normal,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

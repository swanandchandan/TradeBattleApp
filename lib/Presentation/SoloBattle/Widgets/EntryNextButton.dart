import 'package:dummy_tradebattle/Presentation/SoloBattle/Widgets/NewLayout.dart';
import 'package:flutter/material.dart';

class SoloButtonNextEntry extends StatefulWidget {
  const SoloButtonNextEntry({super.key});

  @override
  State<SoloButtonNextEntry> createState() => _SoloButtonNextEntryState();
}

class _SoloButtonNextEntryState extends State<SoloButtonNextEntry> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SecondLayout()),
        );
      },
      child: Column(
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
                    top: screenHeight * 0.013,
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
                        ),
                      ],
                    ),
                  ),
                  // Positioned(
                  //   top: screenHeight * 0.040,
                  //   left: screenWidth * 0.020,
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         width: screenWidth * 0.034,
                  //         height: screenHeight * 0.005,
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(10),
                  //             color: const Color.fromRGBO(255, 0, 0, 1)),
                  //       ),
                  //       SizedBox(width: screenWidth * 0.030),
                  //       Container(
                  //         width: screenWidth * 0.034,
                  //         height: screenHeight * 0.005,
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(10),
                  //             color: const Color.fromRGBO(255, 0, 0, 1)),
                  //       ),
                  //       SizedBox(width: screenWidth * 0.016),
                  //       Container(
                  //         width: screenWidth * 0.034,
                  //         height: screenHeight * 0.005,
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(10),
                  //             color: const Color.fromRGBO(255, 0, 0, 1)),
                  //       ),
                  //       SizedBox(width: screenWidth * 0.016),
                  //       Container(
                  //         width: screenWidth * 0.034,
                  //         height: screenHeight * 0.005,
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(10),
                  //             color: const Color.fromRGBO(255, 0, 0, 1)),
                  //       ),
                  //       SizedBox(width: screenWidth * 0.016),
                  //       Container(
                  //         width: screenWidth * 0.034,
                  //         height: screenHeight * 0.005,
                  //         decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(10),
                  //             color: const Color.fromRGBO(255, 0, 0, 1)),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

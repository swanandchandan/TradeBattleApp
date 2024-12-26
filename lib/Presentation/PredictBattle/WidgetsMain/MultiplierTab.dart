import 'package:flutter/material.dart';

class Multipliertab extends StatefulWidget {
  const Multipliertab({
    super.key,
  });

  @override
  State<Multipliertab> createState() => _MultipliertabState();
}

class _MultipliertabState extends State<Multipliertab> {
  List<bool> isSelected = [false, false];
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.00,
        ),
        Container(
          width: double.infinity,
          // height: screenHeight *0.50,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Grey shadow
                spreadRadius: -4,
                blurRadius: 15,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.015,
                left: screenWidth * 0.06,
                right: screenWidth * 0.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.000),
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
                    SizedBox(
                      width: screenWidth * 0.01,
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
                        SizedBox(
                          height: screenHeight * 0.001,
                        ),
                        Row(
                          children: [
                            // Padding(
                            //   padding:  EdgeInsets.only(bottom: screenHeight * 0.008),
                            //   child: Image.asset("assets/images/arrow-up.png"),
                            // ),
                            //   SizedBox(
                            //   width: screenWidth * 0.01,
                            // ),
                            Text(
                              "You choose:",
                              style: TextStyle(
                                fontFamily: "Nexa",
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.w300,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),

                            SizedBox(
                              width: screenWidth * 0.01,
                            ),
                            Text(
                              "Bullish",
                              style: TextStyle(
                                  fontFamily: "Nexa",
                                  fontSize: screenWidth * 0.033,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      width: screenWidth * 0.30,
                      height: screenHeight * 0.045,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 211, 169, 1)
                            .withOpacity(0.10),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: const Color.fromRGBO(0, 211, 169, 1),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.005),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "200",
                              style: TextStyle(
                                fontFamily: "Nexa",
                                fontSize: screenWidth * 0.040,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(0, 211, 169, 1),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.01,
                            ),
                            Text(
                              "Points",
                              style: TextStyle(
                                fontFamily: "Nexa",
                                fontSize: screenWidth * 0.040,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(0, 211, 169, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.015,
                ),
                SizedBox(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.02),
                      child: Container(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: ToggleButtons(
                          borderRadius:
                              BorderRadius.circular(08), // Circular corners

                          //  fillColor: Colors.black, // Background color when selected
                          selectedColor:
                              Colors.black, // Text color when selected
                          //  color: const Color.fromRGBO(0,0,0,1) ,// Text color when not selected
                          isSelected: isSelected,
                          onPressed: (int index) {
                            setState(() {
                              for (int i = 0; i < isSelected.length; i++) {
                                isSelected[i] = i ==
                                    index; // Ensure only one button is selected
                              }
                            });
                          },
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: isSelected[0]
                                    ? const Color.fromRGBO(0, 211, 169, 1)
                                    : const Color.fromRGBO(234, 234, 234,
                                        1), // Change background color
                              ),

                              width: screenWidth *
                                  0.40, // Custom width for the button
                              height: screenHeight *
                                  0.06, // Custom height for the button
                              alignment: Alignment.center,
                              child: const Text('1.5X',
                                  style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18)), // Custom font size
                            ),
                            Container(
                              color: isSelected[1]
                                  ? const Color.fromRGBO(0, 211, 169, 1)
                                  : const Color.fromRGBO(234, 234, 234,
                                      1), // Change background color // Change background color
                              width: screenWidth *
                                  0.40, // Custom width for the button
                              height: screenHeight *
                                  0.06, // Custom height for the button
                              alignment: Alignment.center,
                              child: const Text('2X',
                                  style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18)), // Custom font size
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.010,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:dummy_tradebattle/Presentation/TimeBattle/Widgets/CountdownLayout.dart';
import 'package:dummy_tradebattle/Presentation/TimeBattle/Widgets/JoinScreenLayout.dart';
import 'package:flutter/material.dart';

class TimeCompletedtab extends StatefulWidget {
  const TimeCompletedtab({super.key});

  @override
  State<TimeCompletedtab> createState() => _TimeCompletedtabState();
}

class _TimeCompletedtabState extends State<TimeCompletedtab> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Countdownlayout()),
        );
      },
      child: Card(
        elevation: 4, // Adjust the shadow depth as needed
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: BorderSide(color: Colors.grey[400]!), // Border color
        ),
        child: Container(
          width: screenWidth * 0.90,
          height: screenHeight * 0.13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 251, 249, 249),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: screenHeight * 0.008),
                  child: Image.asset(
                    'assets/images/himaliyansage2.png',
                    width: screenWidth * 0.16,
                    height: screenHeight * 0.095,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenHeight * 0.010),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: screenHeight * 0.01,
                      // ),
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.009),
                        child: Text(
                          "Flash",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            fontSize: screenHeight * 0.020,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: screenHeight * 0.004,
                            bottom: screenHeight * 0.008),
                        child: Image.asset(
                          'assets/images/Vector 150.png',
                          color: const Color.fromRGBO(217, 217, 217, 1),
                          width: screenWidth * 0.20,
                          height: 1,
                          fit: BoxFit.fill,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: screenHeight * 0.020),
                        child: Text(
                          "21 july 2023",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            fontSize: screenHeight * 0.012,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      Text(
                        "Click to view LeaderBoard",
                        style: TextStyle(
                          fontFamily: "Nexa",
                          fontSize: screenHeight * 0.008,
                          fontWeight: FontWeight.w400,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: screenWidth * 0.35,
                  height: screenHeight * 0.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(254, 100, 95, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/IconMissed.png',
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      SizedBox(
                        height: screenHeight * 0.010,
                      ),
                      Text(
                        "Missed Battle",
                        style: TextStyle(
                            fontFamily: "Nexa",
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: screenHeight * 0.020),
                      ),
                      // Container(
                      //   width: screenWidth * 0.35,
                      //   height: screenHeight * 0.03,
                      //   decoration: const BoxDecoration(
                      //     color: Colors.black,
                      //     borderRadius: BorderRadius.only(
                      //       topLeft: Radius.circular(10),
                      //       topRight: Radius.circular(10),
                      //     ),
                      //   ),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         "You Won",
                      //         style: TextStyle(
                      //             fontFamily: "Nexa",
                      //             color: Colors.white,
                      //             fontWeight: FontWeight.w700,
                      //             fontSize: screenHeight * 0.014),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     top: screenHeight * 0.002,
                      //   ),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Image.asset(
                      //         'assets/images/TBcurrency.png',
                      //         width: 35,
                      //         height: 25,
                      //       ),
                      //       // SizedBox(
                      //       //   width: screenWidth * 0.02,
                      //       // ),
                      //       Padding(
                      //         padding: EdgeInsets.only(
                      //           top: screenHeight * 0.004,
                      //           right: screenHeight * 0.004,
                      //         ),
                      //         child: Text(
                      //           "200 Coins",
                      //           style: TextStyle(
                      //               fontFamily: "Nexa",
                      //               fontWeight: FontWeight.w700,
                      //               fontSize: screenHeight * 0.020,
                      //               color: Colors.white),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       top: screenHeight * 0.004,
                      //       bottom: screenHeight * 0.005),
                      //   child: Image.asset(
                      //     'assets/images/Vector 150.png',
                      //     color: const Color.fromRGBO(255, 255, 255, 1),
                      //     width: screenWidth * 0.31,
                      //     height: 1,
                      //     fit: BoxFit.fill,
                      //   ),
                      // ),
                      // Text(
                      //   "+25 XP",
                      //   style: TextStyle(
                      //       fontFamily: "Nexa",
                      //       fontWeight: FontWeight.w700,
                      //       fontSize: screenHeight * 0.020,
                      //       color: Colors.white),
                      // )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

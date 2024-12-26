// import 'package:dummy_tradebattle/Presentation/TimeBattle/timeProvider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import "package:provider/provider.dart";
//  // Import the TimerProvider class

// class TimeLeftcard extends StatelessWidget {
//   const TimeLeftcard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     final double screenWidth = MediaQuery.of(context).size.width;

//     return Padding(
//       padding: const EdgeInsets.only(top: 20),
//       child: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               height: screenHeight * 0.060,
//               width: screenWidth * 0.900,
//               decoration: const BoxDecoration(
//                 color: Color.fromRGBO(0, 0, 0, 1),
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(15),
//                   topRight: Radius.circular(15),
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset("assets/images/TimeGlass.png"),
//                   SizedBox(
//                     width: screenWidth * 0.020,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: screenHeight * 0.005),
//                     child: Text(
//                       "Time left",
//                       style: TextStyle(
//                           color: const Color.fromRGBO(255, 255, 255, 1),
//                           fontFamily: "Nexa",
//                           fontSize: screenWidth * 0.035,
//                           fontWeight: FontWeight.w700),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ClipRRect(
//               child: Container(
//                 width: screenWidth * 0.900,
//                 height: screenHeight * 0.160,
//                 decoration: BoxDecoration(
//                   color: _getBackgroundColor(context),
//                   borderRadius: const BorderRadius.only(
//                     bottomLeft: Radius.circular(15),
//                     bottomRight: Radius.circular(15),
//                   ),
//                 ),
//                 child: Stack(
//                   children: [
//                     Positioned.fill(
//                       top: screenHeight * 0.000,
//                       child: ClipRRect(
//                         borderRadius: const BorderRadius.only(
//                           bottomLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(15),
//                         ),
//                         child: Transform.translate(
//                           offset:
//                               Offset(screenWidth * -0.07, screenHeight * 0.36),
//                           child: Transform.scale(
//                             scale: 8,
//                             child: ColorFiltered(
//                               colorFilter: const ColorFilter.matrix(<double>[
//                                 -1.0, 0.0, 0.0, 0.0, 255.0, //
//                                 0.0, -1.0, 0.0, 0.0, 255.0, //
//                                 0.0, 0.0, -1.0, 0.0, 255.0, //
//                                 0.0, 0.0, 0.0, 1.0, 0.0, //
//                               ]),
//                               child: Opacity(
//                                 opacity: 0.30,
//                                 child: SvgPicture.asset(
//                                     "assets/svg/Layered_shapd.svg"),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Consumer<TimerProvider>(
//                       builder: (context, timerProvider, _) {
//                         return Column(
//                           children: [
//                             SizedBox(
//                               width: screenWidth * 0.700,
//                               child: Center(
//                                 child: Text(
//                                   "${timerProvider.remainingTime}",
//                                   style: TextStyle(
//                                       color: const Color.fromARGB(
//                                           255, 255, 255, 255),
//                                       fontFamily: 'Nexa',
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: screenWidth * 0.12),
//                                 ),
//                               ),
//                             ),
//                             LinearProgressIndicator(
//                               value: timerProvider.progress,
//                               backgroundColor: Colors.grey[300],
//                               valueColor: const AlwaysStoppedAnimation<Color>(
//                                 Color.fromRGBO(0, 0, 0, 1),
//                               ),
//                             ),
//                           ],
//                         );
//                       },
//                     ), 
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Color _getBackgroundColor(BuildContext context) {
//     final countdownTime = context.watch<TimerProvider>().remainingTime;
//     if (countdownTime >= 10) {
//       return const Color.fromRGBO(110, 233, 110, 1); // Green
//     } else if (countdownTime >= 5) {
//       return Colors.yellow; // Yellow
//     } else {
//       return Colors.red; // Red
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';

class TimeLeftcard extends StatefulWidget {
  const TimeLeftcard({super.key});

  @override
  State<TimeLeftcard> createState() => _TimeLeftcardState();
}

class _TimeLeftcardState extends State<TimeLeftcard> {
  final int totalQuestions = 7;
  int currentQuestionIndex = 0; // Track the current question index
  double initialCountdownTime = 15; // Define the initial countdown time
  int countdownTime = 15; // Initialize the countdown at 15 seconds
  Timer? countdownTimer;

  void startCountdown() {
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (countdownTime > 0) {
          countdownTime--; // Decrease the countdown time by 1 every second
        } else {
          countdownTimer?.cancel(); // Stop the timer when countdown reaches 0
          goToNextQuestion(); // Move to the next question
        }
      });
    });
  }

  void goToNextQuestion() {
    if (currentQuestionIndex < totalQuestions - 1) {
      setState(() {
        currentQuestionIndex++;
        countdownTime = 15; // Reset timer
      });
      startCountdown(); // Restart countdown for the next question
    } else {
      // End of the quiz, stop timer completely
      countdownTimer?.cancel();
      // Handle quiz completion logic here
      print("Quiz Completed");
    }
  }

  // Function to determine the background color based on countdown time
  Color getBackgroundColor() {
    if (countdownTime >= 10) {
      return const Color.fromRGBO(110, 233, 110, 1); // Green
    } else if (countdownTime >= 5) {
      return Colors.yellow; // Yellow
    } else {
      return Colors.red; // Red
    }
  }

  @override
  void initState() {
    super.initState();
    startCountdown(); // Start the countdown when the widget is created
  }

  @override
  void dispose() {
    countdownTimer
        ?.cancel(); // Ensure the timer is canceled if the widget is removed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    // Calculate the progress percentage for the countdown
    double progress = countdownTime / initialCountdownTime.toDouble();

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: screenHeight * 0.060,
              width: screenWidth * 0.900,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/TimeGlass.png"),
                  SizedBox(
                    width: screenWidth * 0.020,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.005),
                    child: Text(
                      "Time left",
                      style: TextStyle(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: "Nexa",
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              child: Container(
                width: screenWidth * 0.900,
                height: screenHeight * 0.160,
                decoration: BoxDecoration(
                  color: getBackgroundColor(),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: screenHeight * 0.000,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        child: Transform.translate(
                          offset:
                              Offset(screenWidth * -0.07, screenHeight * 0.36),
                          // kToolbarHeight * 5.8
                          child: Transform.scale(
                            scale: 8,
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
                      left: screenWidth * 0.098,
                      top: screenHeight * 0.025,
                      child: SizedBox(
                        width: screenWidth * 0.700,
                        child: Center(
                          child: Text(
                            "$countdownTime",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                // const Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Nexa',
                                fontWeight: FontWeight.w700,
                                fontSize: screenWidth * 0.12),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: screenHeight * 0.040,
                      left: screenWidth * 0.05,
                      right: screenWidth * 0.05,
                      child: LinearProgressIndicator(
                        value: progress, // Set progress value
                        backgroundColor: Colors.grey[300],
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          Color.fromRGBO(0, 0, 0, 1),
                        ), // Customize color as needed
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

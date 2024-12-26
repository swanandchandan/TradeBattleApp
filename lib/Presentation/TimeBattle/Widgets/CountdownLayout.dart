import 'package:dummy_tradebattle/Presentation/TimeBattle/TimeQuizScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';

class Countdownlayout extends StatefulWidget {
  const Countdownlayout({super.key});

  @override
  State<Countdownlayout> createState() => _CountdownlayoutState();
}

class _CountdownlayoutState extends State<Countdownlayout> {
  int countdownTime = 10; // Set the countdown starting time in seconds.
  Timer? countdownTimer; // Declare a timer, but don't start it yet.

  void startCountdown() {
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (countdownTime > 0) {
          countdownTime--; // Decrease time by 1 every second.
        } else {
          countdownTimer?.cancel();

          // Navigate to the next screen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const TimeScreenQuiz()),
          ); // Stop the timer when it reaches 0.
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    startCountdown(); // Start the countdown when the screen loads.
  }

  @override
  void dispose() {
    countdownTimer?.cancel(); // Cancel the timer if the screen is closed.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    // Determine background and text color based on the countdown time
    Color? backgroundColor;
    Color textColor = Colors.white;

    if (countdownTime >= 7) {
      backgroundColor = const Color.fromRGBO(0, 211, 169, 1);
    } else if (countdownTime >= 3) {
      backgroundColor = const Color.fromRGBO(255, 177, 51, 1);
    } else {
      backgroundColor = const Color.fromRGBO(255, 81, 53, 1);
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      // const Color.fromRGBO(0, 211, 169, 1),
      body: ClipRRect(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: backgroundColor,
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  top: screenHeight * 0.002,
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(15),
                    child: Transform.translate(
                      offset: Offset(screenWidth * -0.1, screenHeight * -0.03),
                      // kToolbarHeight * 5.8
                      child: Transform.scale(
                        scale: 02.5,
                        child: ColorFiltered(
                          colorFilter: const ColorFilter.matrix(<double>[
                            -1.0, 0.0, 0.0, 0.0, 255.0, //
                            0.0, -1.0, 0.0, 0.0, 255.0, //
                            0.0, 0.0, -1.0, 0.0, 255.0, //
                            0.0, 0.0, 0.0, 1.0, 0.0, //
                          ]),
                          child: Opacity(
                            opacity: 0.40,
                            child: SvgPicture.asset(
                                "assets/svg/Layered_shapd.svg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.340,
                  top: screenHeight * 0.335,
                  child: Text(
                    "BATTLE STARS IN",
                    style: TextStyle(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Nexa',
                        fontWeight: FontWeight.w700,
                        fontSize: screenWidth * 0.040),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.140,
                  top: screenHeight * 0.350,
                  child: SizedBox(
                    width: screenWidth * 0.700,
                    child: Center(
                      child: Text(
                        "$countdownTime",
                        style: TextStyle(
                            color: textColor,
                            // const Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Nexa',
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.45),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.398,
                  top: screenHeight * 0.600,
                  child: Text(
                    "SECONDS",
                    style: TextStyle(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Nexa',
                        fontWeight: FontWeight.w700,
                        fontSize: screenWidth * 0.040),
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

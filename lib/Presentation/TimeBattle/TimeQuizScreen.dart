import 'package:dummy_tradebattle/Presentation/TimeBattle/Widgets/TimeQuiz.dart';
import 'package:dummy_tradebattle/Presentation/TimeBattle/Widgets/Time_leftCard.dart';
import 'package:flutter/material.dart';

class TimeScreenQuiz extends StatefulWidget {
  const TimeScreenQuiz({super.key});

  @override
  State<TimeScreenQuiz> createState() => _TimeScreenQuizState();
}

class _TimeScreenQuizState extends State<TimeScreenQuiz> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.012,
            ),
            TimeLeftcard(),
            SizedBox(
              height: screenHeight * 0.015,
            ),
            TimeQuiz(),
            Expanded(
              child: Container(
                width: double.infinity,
                // height: screenHeight * 0.135,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),

                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(7, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    }),
                  ),
                ), // <-- Clo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

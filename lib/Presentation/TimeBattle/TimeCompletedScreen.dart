import 'package:dummy_tradebattle/Presentation/TimeBattle/Widgets/TimecompletedTab.dart';
import 'package:flutter/material.dart';

class Timecompletedscreen extends StatefulWidget {
  const Timecompletedscreen({super.key});

  @override
  State<Timecompletedscreen> createState() => _TimecompletedscreenState();
}

class _TimecompletedscreenState extends State<Timecompletedscreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.003,
        ),
        Expanded(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 15,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.05, right: screenWidth * 0.05),
                child: Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    const TimeCompletedtab(),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

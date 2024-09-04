import 'package:dummy_tradebattle/Presentation/PredictBattle/MyBattle/widgets.dart/Completed_tab.dart';

import 'package:flutter/material.dart';

class Completedscreen extends StatefulWidget {
  const Completedscreen({super.key});

  @override
  State<Completedscreen> createState() => _CompletedscreenState();
}

class _CompletedscreenState extends State<Completedscreen> {
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
                    const Completed_Tab(),
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

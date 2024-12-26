import 'package:flutter/material.dart';
 class Solooptiontab extends StatefulWidget {
  const Solooptiontab({super.key});

  @override
  State<Solooptiontab> createState() => _SolooptiontabState();
}

class _SolooptiontabState extends State<Solooptiontab> {
  
  @override
  Widget build(BuildContext context) {
      final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return   GestureDetector(
                        onTap: () {
                          print("ok tapped");
                        },
                        child: Container(
                          width: double.infinity,
                          height: screenHeight * 0.06,
                          decoration: BoxDecoration(
                            color:
                                const Color.fromRGBO(234,234,234,1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              "Bullish",
                              style: TextStyle(
                                fontFamily: "Nexa",
                                fontSize: screenWidth * 0.050,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(41, 41, 41, 1),
                              ),
                            ),
                          ),
                        ),
                      );
  }
}
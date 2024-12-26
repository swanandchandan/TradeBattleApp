import 'package:flutter/material.dart';

class EntriesButton extends StatefulWidget {
  const EntriesButton({super.key});

  @override
  State<EntriesButton> createState() => _EntriesButtonState();
}

class _EntriesButtonState extends State<EntriesButton> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.020,
        ),
        Container(
          width: screenWidth * 0.440,
          height: screenHeight * 0.075,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromRGBO(255, 81, 53, 1),
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
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: screenHeight * 0.009,
                  ),
                  child: Text(
                    "No. of\nEntries",
                    style: TextStyle(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: "Nexa",
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.030,
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.030),
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(167, 51, 33, 1)),
                  width: screenWidth * 0.003,
                  height: screenHeight * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenHeight * 0.009,
                  ),
                  child: Image.asset("assets/images/arrow-right.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: screenHeight * 0.009,
                      left: screenHeight * 0.010,
                      right: screenHeight * 0.010),
                  child: Text(
                    "1",
                    style: TextStyle(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: "Nexa",
                        fontWeight: FontWeight.w700,
                        fontSize: screenWidth * 0.060),
                  ),
                ),
                Image.asset("assets/images/arrow-left.png"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

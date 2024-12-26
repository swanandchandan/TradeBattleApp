import 'package:dummy_tradebattle/Presentation/PredictBattle/EntryFeeScreen.dart';
import 'package:dummy_tradebattle/Presentation/PredictBattle/WidgetsMain/SummaryTab.dart';
import 'package:flutter/material.dart';

class EntrySummary extends StatefulWidget {
  const EntrySummary({super.key});

  @override
  State<EntrySummary> createState() => _EntrySummaryState();
}

class _EntrySummaryState extends State<EntrySummary> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Container(
              width: screenWidth * 0.92,
              height: screenHeight * 0.08,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(41, 41, 41, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Center(
                child: Text(
                  "Entry 1",
                  style: TextStyle(
                    fontFamily: "Nexa",
                    color: Colors.white,
                    fontSize: screenHeight * 0.030,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Container(
              width: screenWidth * 0.95,
              height: screenHeight * 0.60,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 4),
                    blurRadius: 7.5,
                  ),
                ],
              ),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(
                  width: screenWidth * 0.95,
                  height: screenHeight * 0.50,
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: screenWidth * 0.040,
                          right: screenWidth * 0.040,
                        ),
                        child: const Column(
                          children: [
                            Summarytab(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EntryFeeScreen()),
                    );
                  },
                  child: Container(
                    width: screenWidth * 0.78,
                    height: screenHeight * 0.08,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Center(
                      child: Text(
                        "close",
                        style: TextStyle(
                          fontFamily: "Nexa",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: screenHeight * 0.025,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

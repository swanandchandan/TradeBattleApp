import 'package:dummy_tradebattle/Presentation/PredictBattle/EntryFeeScreen.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/Widgets/SQuizeCard.dart';
import 'package:flutter/material.dart';

class Entrylayout extends StatefulWidget {
  const Entrylayout({super.key});

  @override
  State<Entrylayout> createState() => _EntrylayoutState();
}

class _EntrylayoutState extends State<Entrylayout> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 00, right: 00),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Container(
                width: screenWidth * 0.999,
                height: screenHeight * 0.08,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  // gradient: LinearGradient(
                  //   begin: Alignment.bottomLeft,
                  //   end: Alignment.bottomRight,
                  //   colors: [
                  //     Color.fromARGB(255, 77, 124, 254),
                  //     Color.fromARGB(255, 151, 71, 255),
                  //   ],
                  // ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Entry 1",
                      style: TextStyle(
                        fontFamily: "Nexa",
                        color: Colors.white,
                        fontSize: screenHeight * 0.030,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: screenWidth * 0.999,
                height: screenHeight * 0.60,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
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
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.060,
                        ),
                        const Squizecard(),
                      ],
                    ),
                    Positioned(
                      left: screenWidth * 0.060,
                      top: screenHeight * 0.48,
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.pop(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const EntryFeeScreen()),
                          // );
                        },
                        child: Container(
                          width: screenWidth * 0.88,
                          height: screenHeight * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(19),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: screenWidth * 0.03,
                              ),
                              Text(
                                "close",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenHeight * 0.025,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.03,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

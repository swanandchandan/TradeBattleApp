import 'package:dummy_tradebattle/Presentation/PredictBattle/EntryFeeScreen.dart';
import 'package:flutter/material.dart';

class Fee_breakdown extends StatefulWidget {
  const Fee_breakdown({super.key});

  @override
  State<Fee_breakdown> createState() => _Fee_breakdownState();
}

class _Fee_breakdownState extends State<Fee_breakdown> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenWidth * 0.06,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    width: screenWidth * 0.92,
                    height: screenHeight * 0.10,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(19),
                            topRight: Radius.circular(19))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Entry Fee Breakdown",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            color: Colors.white,
                            fontSize: screenHeight * 0.025,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "(Fee Entry)",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            color: Colors.white,
                            fontSize: screenHeight * 0.015,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.92,
                    height: screenHeight * 0.60,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(13),
                        bottomRight: Radius.circular(13),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 4),
                          blurRadius: 7.5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: screenWidth * 0.82,
                                height: screenHeight * 0.06,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(0, 211, 169, 1),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/TBcurrency.png',
                                      width: 25,
                                      height: screenHeight * 0.05,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    Text(
                                      "1,500",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        color: Colors.white,
                                        fontSize: screenHeight * 0.025,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 0, 17, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Deposited/Winning(s)\nCoins",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      color: Colors.black,
                                      fontSize: screenHeight * 0.020,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Image.asset(
                                    'assets/images/TBcurrency.png',
                                    width: 15,
                                    height: screenHeight * 0.05,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.02,
                                  ),
                                  Text(
                                    "-750",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      color:
                                          const Color.fromRGBO(255, 81, 53, 1),
                                      fontSize: screenHeight * 0.020,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "The Coins Will be deducted from\n your Deposied / Winnings(s)",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Nexa",
                                      fontSize: screenHeight * 0.015,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight * 0.05,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 06, right: 06),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(),
                                        child: Image.asset(
                                          'assets/images/Vector 150.png',
                                          color: Colors.grey,
                                          width: screenWidth * 0.12,
                                          height: screenHeight * 0.002,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(04, 0, 04, 0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Deposited/Winning(s)\nCoins",
                                          style: TextStyle(
                                            fontFamily: "Nexa",
                                            color: Colors.black,
                                            fontSize: screenHeight * 0.020,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        Image.asset(
                                          'assets/images/TBcurrency.png',
                                          width: 15,
                                          height: screenHeight * 0.05,
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.02,
                                        ),
                                        Text(
                                          "-750",
                                          style: TextStyle(
                                            fontFamily: "Nexa",
                                            color: const Color.fromRGBO(
                                                255, 81, 53, 1),
                                            fontSize: screenHeight * 0.020,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.01,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "The Coins Will be deducted from\n your Deposied / Winnings(s)",
                                          style: TextStyle(
                                            fontFamily: "Nexa",
                                            color: Colors.black,
                                            fontSize: screenHeight * 0.015,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.04,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const EntryFeeScreen()),
                                  );
                                },
                                child: Container(
                                  width: screenWidth * 0.82,
                                  height: screenHeight * 0.08,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(19),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Close",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        color: Colors.white,
                                        fontSize: screenHeight * 0.025,
                                        fontWeight: FontWeight.normal,
                                      ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

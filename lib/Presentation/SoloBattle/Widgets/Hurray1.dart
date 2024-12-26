import 'package:dummy_tradebattle/Presentation/PredictBattle/EntryFeeScreen.dart';
import 'package:flutter/material.dart';

class Hurray1 extends StatefulWidget {
  const Hurray1({super.key});

  @override
  State<Hurray1> createState() => _Hurray1State();
}

class _Hurray1State extends State<Hurray1> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Padding(
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
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 77, 124, 254),
                      Color.fromARGB(255, 151, 71, 255),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hurray!",
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
                width: screenWidth * 0.95,
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
                          height: screenHeight * 0.03,
                        ),
                        Container(
                          width: double.infinity,
                          height: screenHeight * 0.53,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "You have joined the Battle",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      color: Colors.black,
                                      fontSize: screenHeight * 0.022,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "Himalyan Sage",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      color: const Color.fromARGB(
                                          255, 0, 211, 169),
                                      fontSize: screenHeight * 0.022,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.02,
                                ),
                                Image.asset(
                                  'assets/images/Vector 150.png',
                                  color:
                                      const Color.fromARGB(255, 217, 217, 217),
                                  width: screenWidth * 0.80,
                                  height: screenHeight * 0.002,
                                  fit: BoxFit.fill,
                                ),
                                SizedBox(
                                  height: screenHeight * 0.02,
                                ),
                                Center(
                                  child: Text(
                                    "Please navigate to My Battle > Upcoming to view the",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      color: Colors.black,
                                      fontSize: screenHeight * 0.015,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "status of this battle ",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      color: Colors.black,
                                      fontSize: screenHeight * 0.015,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.02,
                                ),
                                Container(
                                  width: screenWidth * 0.78,
                                  height: screenHeight * 0.28,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(19),
                                    color: const Color.fromARGB(
                                        255, 247, 247, 247),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: screenHeight * 0.02,
                                      ),
                                      SizedBox(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 0, 20, 0),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Coins deducted",
                                                style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  color: const Color.fromARGB(
                                                      255, 255, 80, 53),
                                                  fontSize:
                                                      screenHeight * 0.018,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(),
                                              ),
                                              Image.asset(
                                                'assets/images/TBcurrency.png',
                                                width: 30,
                                                height: 34,
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.02,
                                              ),
                                              Text(
                                                "-1,500",
                                                style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  color: const Color.fromARGB(
                                                      255, 255, 80, 53),
                                                  fontSize:
                                                      screenHeight * 0.018,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.02,
                                      ),
                                      SizedBox(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 0, 20, 0),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Deposited/Winning(s) Coins",
                                                style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  color: Colors.black,
                                                  fontSize:
                                                      screenHeight * 0.016,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(),
                                              ),
                                              Text(
                                                "-750",
                                                style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  color: const Color.fromARGB(
                                                      255, 255, 80, 53),
                                                  fontSize:
                                                      screenHeight * 0.016,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.02,
                                      ),
                                      SizedBox(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 0, 20, 0),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Bonus Coins",
                                                style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  color: Colors.black,
                                                  fontSize:
                                                      screenHeight * 0.016,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(),
                                              ),
                                              Text(
                                                "-750",
                                                style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  color: const Color.fromARGB(
                                                      255, 255, 80, 53),
                                                  fontSize:
                                                      screenHeight * 0.016,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.04,
                                      ),
                                      Center(
                                        child: Image.asset(
                                          'assets/images/Vector 150.png',
                                          color: const Color.fromARGB(
                                              255, 234, 234, 234),
                                          width: screenWidth * 0.65,
                                          height: screenHeight * 0.002,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.02,
                                      ),
                                      SizedBox(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 0, 20, 0),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Current Balance",
                                                style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  color: Colors.black,
                                                  fontSize:
                                                      screenHeight * 0.022,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(),
                                              ),
                                              Image.asset(
                                                'assets/images/TBcurrency.png',
                                                width: 30,
                                                height: 34,
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.02,
                                              ),
                                              Text(
                                                "7,000",
                                                style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  color: const Color.fromARGB(
                                                      255, 0, 211, 169),
                                                  fontSize:
                                                      screenHeight * 0.022,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
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
                      ],
                    ),
                    Positioned(
                      left: screenWidth * 0.065,
                      top: screenHeight * 0.48,
                      child: GestureDetector(
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

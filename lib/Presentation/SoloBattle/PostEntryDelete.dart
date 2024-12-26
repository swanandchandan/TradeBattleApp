import 'package:dummy_tradebattle/Presentation/PredictBattle/WidgetsMain/ButtonEntries.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/UpcomingEventTab.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/Widgets/EntryFeetinficard.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/Widgets/EntryNextButton.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/Widgets/Hurray1.dart';
import 'package:flutter/material.dart';

class Postentrydelete extends StatefulWidget {
  const Postentrydelete({super.key});

  @override
  State<Postentrydelete> createState() => _PostentrydeleteState();
}

class _PostentrydeleteState extends State<Postentrydelete> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/Arrow_left.png")),
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.005),
              child: Text(
                "Solo Battle",
                style: TextStyle(
                    fontFamily: "Nexa",
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w700),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/DoubtIcon.png",
                width: screenWidth * 0.060,
                height: screenHeight * 0.025,
              ),
            ),
            Expanded(child: Container()),
            Container(
              height: screenHeight * 0.038,
              width: screenWidth * 0.31,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 211, 169, 1),
                borderRadius: BorderRadius.circular(05),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/TBcurrency.png',
                    width: screenWidth * 0.08,
                    height: 23,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.005),
                    child: Text(
                      "45,000",
                      style: TextStyle(
                          fontFamily: "Nexa",
                          color: Colors.white,
                          fontSize: screenWidth * 0.045,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        child: Column(children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: screenHeight * 0.890,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: const Entryfeetinfocard(),
              ),
              Positioned(
                top: screenHeight * 0.270,
                left: screenWidth * 0.000,
                child: Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.48,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: screenWidth * 0.999,
                              height: screenHeight * 0.19,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 255, 255, 255),
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
                                            "Entry Fee",
                                            style: TextStyle(
                                              fontFamily: "Nexa",
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: screenHeight * 0.018,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(
                                            width: screenWidth * 0.03,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 2),
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: Image.asset(
                                                'assets/images/Icon_inquiry.png',
                                                width: 30,
                                                height: 34,
                                              ),
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
                                            "1,500",
                                            style: TextStyle(
                                              fontFamily: "Nexa",
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: screenHeight * 0.018,
                                              fontWeight: FontWeight.w700,
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
                                            "My Coins",
                                            style: TextStyle(
                                              fontFamily: "Nexa",
                                              color: Colors.black,
                                              fontSize: screenHeight * 0.016,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          Text(
                                            "-1,500",
                                            style: TextStyle(
                                              fontFamily: "Nexa",
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: screenHeight * 0.016,
                                              fontWeight: FontWeight.w400,
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
                                              fontSize: screenHeight * 0.016,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(),
                                          ),
                                          Text(
                                            "0",
                                            style: TextStyle(
                                              fontFamily: "Nexa",
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: screenHeight * 0.016,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.02,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            Center(
                              child: Container(
                                width: screenWidth * 0.999,
                                height: screenHeight * 0.17,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(234, 255, 251, 1)
                                      .withOpacity(0.9),
                                  border: Border.all(
                                    color: const Color.fromRGBO(0, 211, 169, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 2.5,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, right: 15),
                                        child: Row(
                                          children: [
                                            const Column(
                                              children: [
                                                Text(
                                                  "Current Balance",
                                                  style: TextStyle(
                                                      fontFamily: "Nexa",
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: screenWidth * 0.03,
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Image.asset(
                                                'assets/images/Icon_inquiry.png',
                                                width: 30,
                                                height: 34,
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(),
                                            ),
                                            Image.asset(
                                              'assets/images/TBcurrency.png',
                                              width: 25,
                                              height: screenHeight * 0.05,
                                            ),
                                            SizedBox(
                                              width: screenWidth * 0.01,
                                            ),
                                            Text(
                                              "8,500",
                                              style: TextStyle(
                                                fontFamily: "Nexa",
                                                color: Colors.black,
                                                fontSize: screenHeight * 0.019,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 6, 15, 6),
                                        child: Row(
                                          children: [
                                            const Text(
                                              "My Coins",
                                              style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                            ),
                                            Expanded(
                                              child: Container(),
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 2),
                                              child: Text(
                                                "-750",
                                                style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                      255, 81, 53, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 6, 15, 6),
                                        child: Row(
                                          children: [
                                            const Text(
                                              "Bonus Coins",
                                              style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black),
                                            ),
                                            Expanded(
                                              child: Container(),
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 4),
                                              child: Text(
                                                "0",
                                                style: TextStyle(
                                                  fontFamily: "Nexa",
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: screenHeight * 0.750,
                left: screenWidth * 0.024,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Hurray1()),
                    );
                  },
                  child: Container(
                    width: screenWidth * 0.95,
                    height: screenHeight * 0.07,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 211, 169, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Join",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Nexa",
                            ),
                          ),
                          Expanded(child: Container()),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              'assets/images/Arrow_right.png',
                              color: const Color.fromARGB(255, 255, 255, 255),
                              width: screenWidth * 0.09,
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Positioned(
              //     top: screenHeight * 0.700,
              //     left: screenWidth * 0.035,
              //     child: Row(
              //       children: [
              //         const EntriesButton(),
              //         SizedBox(
              //           width: screenWidth * 0.05,
              //         ),
              //         const SoloButtonNextEntry(),
              //       ],
              //     )),
            ],
          ),
          const SizedBox(
            height: 00,
          ),
        ]),
      ),
    );
  }
}

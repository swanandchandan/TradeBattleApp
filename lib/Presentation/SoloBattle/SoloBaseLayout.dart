import 'package:dummy_tradebattle/Presentation/PredictBattle/WidgetsMain/ButtonEntries.dart';
import 'package:dummy_tradebattle/Presentation/PredictBattle/WidgetsMain/ButtonNextEntry.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/Widgets/SQuizeCard.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/Widgets/SoloBattleCard.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/Widgets/SoloOptionTab.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/Widgets/EntryNextButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Solobaselayout extends StatefulWidget {
  const Solobaselayout({super.key});

  @override
  State<Solobaselayout> createState() => _SolobaselayoutState();
}

class _SolobaselayoutState extends State<Solobaselayout> {
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
      body: Stack(
        children: [
          Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(83, 71, 203, 1),
                        Color.fromRGBO(41, 33, 115, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: double.infinity,
                  height: screenHeight * 0.130,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        top: screenHeight * 0.002,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Transform.translate(
                            offset:
                                Offset(screenWidth * 0.600, kToolbarHeight * 5),
                            child: Transform.scale(
                              scale: 11,
                              child: ColorFiltered(
                                colorFilter: const ColorFilter.matrix(<double>[
                                  -1.0, 0.0, 0.0, 0.0, 255.0, //
                                  0.0, -1.0, 0.0, 0.0, 255.0, //
                                  0.0, 0.0, -1.0, 0.0, 255.0, //
                                  0.0, 0.0, 0.0, 1.0, 0.0, //
                                ]),
                                child: Opacity(
                                  opacity: 0.45,
                                  child: SvgPicture.asset(
                                      "assets/svg/Layered_shapd.svg"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: screenHeight * 0.025,
                        left: screenWidth * 0.160,
                        child: Image.asset(
                          "assets/images/trophy_icon.png",
                          width: screenWidth * 0.205,
                          height: screenHeight * 0.075,
                        ),
                      ),
                      Positioned(
                        top: screenHeight * 0.035,
                        left: screenWidth * 0.380,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Potential Prize",
                              style: TextStyle(
                                  fontFamily: "Nexa",
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.045,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Select An Option",
                              style: TextStyle(
                                  fontFamily: "Nexa",
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.055,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: screenHeight * 0.000,
                        left: screenWidth * 0.890,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            "assets/images/Icon_inquiry.png",
                            width: screenWidth * 0.060,
                            height: screenHeight * 0.025,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.015,
              ),
              SizedBox(
                height: screenHeight * 0.110,
                child: Stack(
                  children: [
                    Positioned(
                      left: screenWidth * 0.015,
                      top: screenHeight * 0.050,
                      child: Container(
                        width: screenWidth * 0.92,
                        height: screenHeight * 0.065,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                          color: Color.fromRGBO(247, 247, 247, 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.020,
                              screenHeight * 0.000,
                              screenWidth * 0.020,
                              screenHeight * 0.005),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Starts |",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.025,
                                  color: const Color.fromRGBO(41, 41, 41, 1),
                                ),
                              ),
                              Text(
                                " 10 Jul, 09:45",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  fontWeight: FontWeight.w700,
                                  fontSize: screenWidth * 0.028,
                                  color: const Color.fromRGBO(41, 41, 41, 1),
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Text(
                                "Starts |",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  fontWeight: FontWeight.w400,
                                  fontSize: screenWidth * 0.025,
                                  color: const Color.fromRGBO(41, 41, 41, 1),
                                ),
                              ),
                              Text(
                                " 10 Jul, 09:45",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  fontWeight: FontWeight.w700,
                                  fontSize: screenWidth * 0.028,
                                  color: const Color.fromRGBO(41, 41, 41, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        width: screenWidth * 0.95,
                        height: screenHeight * 0.075,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Color.fromRGBO(233, 231, 255, 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.010),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Ends In",
                                style: TextStyle(
                                  color: const Color.fromRGBO(156, 156, 156, 1),
                                  fontFamily: "Nexa",
                                  fontSize: screenWidth * 0.030,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "13:03",
                                style: TextStyle(
                                    color:
                                        const Color.fromRGBO(254, 100, 95, 1),
                                    fontFamily: "Nexa",
                                    fontSize: screenWidth * 0.065,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.015,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 14,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.015,
                        ),
                        const Squizecard(),
                      ],
                    );
                    // const SoloBattleCard();
                  },
                ),
              ),
            ],
          ),
          Positioned(
              top: screenHeight * 0.700,
              left: screenWidth * 0.035,
              child: Row(
                children: [
                  const EntriesButton(),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  const SoloButtonNextEntry(),
                ],
              ))
        ],
      ),
    );
  }
}

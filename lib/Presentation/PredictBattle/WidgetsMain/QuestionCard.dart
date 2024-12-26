import 'package:dummy_tradebattle/Presentation/PredictBattle/WidgetsMain/OptionsTab.dart';
import 'package:flutter/material.dart';

class QuestionTab extends StatelessWidget {
  const QuestionTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.00,
          ),
          Container(
            width: double.infinity,
            // height: screenHeight *0.50,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Grey shadow
                  spreadRadius: -4,
                  blurRadius: 15,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.003),
                        child: Text(
                          "1.",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            fontSize: screenWidth * 0.040,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nifty movement",
                            style: TextStyle(
                              fontFamily: "Nexa",
                              fontSize: screenWidth * 0.040,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.003,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: screenHeight * 0.008),
                                child:
                                    Image.asset("assets/images/arrow-up.png"),
                              ),
                              SizedBox(
                                width: screenWidth * 0.01,
                              ),
                              Text(
                                "2.75",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  fontSize: screenWidth * 0.030,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(0, 211, 169, 1),
                                ),
                              ),
                              Text(
                                "%",
                                style: TextStyle(
                                    fontFamily: "Nexa",
                                    fontSize: screenWidth * 0.030,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        const Color.fromRGBO(0, 211, 169, 1)),
                              ),
                              SizedBox(
                                width: screenWidth * 0.02,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: screenHeight * 0.003),
                                child: Text(
                                  "₹",
                                  style: TextStyle(
                                      fontSize: screenHeight * 0.015,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.01,
                              ),
                              Text(
                                "4000",
                                style: TextStyle(
                                    fontFamily: "Nexa",
                                    fontSize: screenWidth * 0.030,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        width: screenWidth * 0.30,
                        height: screenHeight * 0.050,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 211, 169, 1)
                              .withOpacity(0.10),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: const Color.fromRGBO(0, 211, 169, 1),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.005),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "200",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  fontSize: screenWidth * 0.043,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(0, 211, 169, 1),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.01,
                              ),
                              Text(
                                "Points",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  fontSize: screenWidth * 0.043,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(0, 211, 169, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.009,
                  ),
                  SizedBox(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: screenHeight * 0.010,
                            ),
                            const OptionsTab(),
                          ],
                        );
                      },
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

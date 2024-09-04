import 'package:flutter/material.dart';

class Live_event_tab extends StatelessWidget {
  const Live_event_tab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      elevation: 4, // Adjust the shadow depth as needed
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
          color: Color.fromRGBO(247, 247, 247, 1),
        ), // Border color
      ),
      child: Container(
        width: screenWidth * 0.90,
        height: screenHeight * 0.13,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.018,
              right: screenWidth * 0.018,
              top: screenHeight * 0.003,
              bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/himaliyansage2.png',
                width: 72,
                height: 88,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Head to Head",
                        style: TextStyle(
                          fontFamily: "Nexa",
                          fontSize: screenHeight * 0.018,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // Expanded(
                    //   child: Container(),
                    // ),
                    Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.030),
                      child: Container(
                        width: screenWidth * 0.25,
                        height: screenHeight * 0.040,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(247, 247, 247, 0.97),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(color: Colors.grey, blurRadius: 1.5),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/trophy_icon.png',
                                fit: BoxFit.fill,
                                width: screenWidth * 0.065,
                                height: screenHeight * 0.028),
                            SizedBox(
                              width: screenWidth * 0.02,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                "5,000",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: screenHeight * 0.020,
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
              Expanded(
                child: Container(),
              ),
              Container(
                width: screenWidth * 0.32,
                height: screenHeight * 0.11,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(247, 247, 247, 1),
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //  SizedBox(
                    //   height: screenHeight * 0.015,
                    // ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: screenHeight * 0.001,
                            left: 36,
                          ),
                          child: Image.asset('assets/images/Icon_live.png',
                              isAntiAlias: true,
                              fit: BoxFit.fill,
                              width: screenWidth * 0.040,
                              height: screenHeight * 0.019),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: screenHeight * 0.005,
                            left: 8,
                          ),
                          child: Text(
                            "Live",
                            style: TextStyle(
                              fontFamily: "Nexa",
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: screenHeight * 0.022,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.000),
                      child: Image.asset(
                        'assets/images/Vector 150.png',
                        // fit: BoxFit.fill,
                        color: const Color.fromRGBO(234, 234, 234, 1),
                        width: screenWidth * 0.18,
                        height: 1,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: screenHeight * 0.004, left: 6),
                      child: Text(
                        "Ends In",
                        style: TextStyle(
                          fontFamily: "Nexa",
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.010,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.000),
                      child: Text(
                        "00:25",
                        style: TextStyle(
                          fontFamily: "Nexa",
                          color: const Color.fromRGBO(0, 211, 169, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: screenHeight * 0.035,
                        ),
                      ),
                    ),
                    //    Expanded(
                    //      child: SizedBox(
                    //          height: screenHeight * 0.015,
                    //      ),
                    //    ),
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

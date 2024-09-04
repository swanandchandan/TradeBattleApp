import 'package:flutter/material.dart';
// import 'package:trade_battle_application/Responsive/Homepage.dart';

class Post_deletion_screen extends StatefulWidget {
  const Post_deletion_screen({super.key});

  @override
  State<Post_deletion_screen> createState() => _Post_deletion_screenState();
}

class _Post_deletion_screenState extends State<Post_deletion_screen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.03,
                        screenHeight * 0.01, screenWidth * 0.03, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.pop(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const MobileLayout()),
                            // );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.002),
                            child: Image.asset(
                              'assets/images/Arrow_left.png',
                              width: screenWidth * 0.09,
                              height: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.010),
                          child: Text(
                            "Predict Battle",
                            style: TextStyle(
                                fontFamily: "Nexa",
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 41, 41, 41),
                                fontSize: screenHeight * 0.020),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
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
                                height: 30,
                              ),
                              Text(
                                "45,000",
                                style: TextStyle(
                                    fontFamily: "Nexa",
                                    color: Colors.white,
                                    fontSize: screenHeight * 0.023,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.010,
                ),
                Stack(
                  children: [
                    Container(
                      height: screenHeight * 0.32,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(234, 234, 234, 1),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Expanded(
                          //   child: Container(),
                          // ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 14),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(),
                                ),
                                Container(
                                  width: screenWidth * 0.25,
                                  height: screenHeight * 0.030,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 41, 41, 41),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Questions",
                                        style: TextStyle(
                                          fontFamily: "Nexa",
                                          fontSize: screenHeight * 0.013,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/Vector 150.png',
                                  // fit: BoxFit.fill,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  width: screenWidth * 0.06,
                                  height: 2,
                                  fit: BoxFit.fitHeight,
                                ),
                                Container(
                                  width: screenWidth * 0.25,
                                  height: screenHeight * 0.030,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 41, 41, 41),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Multipler",
                                        style: TextStyle(
                                          fontFamily: "Nexa",
                                          fontSize: screenHeight * 0.013,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/Vector 150.png',
                                  color: const Color.fromARGB(224, 0, 0, 0),
                                  width: screenWidth * 0.06,
                                  height: 2,
                                  fit: BoxFit.fill,
                                ),
                                Container(
                                  width: screenWidth * 0.25,
                                  height: screenHeight * 0.030,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 41, 41, 41),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "join",
                                        style: TextStyle(
                                          fontFamily: "Nexa",
                                          fontSize: screenHeight * 0.013,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                // SizedBox(
                                //   height: screenHeight * 0.065,
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.26,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 74, 74, 74),
                        // color: const Color.fromARGB(255, 74, 74, 74),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.04,
                            screenHeight * 0.02,
                            screenWidth * 0.04,
                            screenHeight * 0.02),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/images/himaliyansage.png',
                                    width: 77,
                                    height: 92,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 7, left: 9),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Himalayan Sage",
                                        style: TextStyle(
                                          fontFamily: "Nexa",
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 4, bottom: 2),
                                        child: Image.asset(
                                          'assets/images/Vector 150.png',
                                          // fit: BoxFit.fill,
                                          color: const Color.fromARGB(
                                              255, 217, 217, 217),
                                          width: 145,
                                          height: 2,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            child: Image.asset(
                                              'assets/images/Spots.png',
                                              fit: BoxFit.fill,
                                              color: const Color.fromARGB(
                                                  255, 255, 255, 255),
                                              width: 15,
                                              height: 15,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 3, top: 6),
                                            child: Text(
                                              "120",
                                              style: TextStyle(
                                                fontFamily: "Nexa",
                                                color: Colors.white,
                                                fontSize: screenHeight * 0.014,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 3, top: 6),
                                            child: Text(
                                              "/200 Spots",
                                              style: TextStyle(
                                                fontFamily: "Nexa",
                                                color: Colors.white,
                                                fontSize: screenHeight * 0.014,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 12),
                                        child: Container(
                                          width: 145,
                                          height: screenHeight * 0.026,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white,
                                                width: 1.1),
                                            color: const Color.fromARGB(
                                              255,
                                              0,
                                              211,
                                              169,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 2),
                                                child: Text(
                                                  "Entry |",
                                                  style: TextStyle(
                                                    fontFamily: "Nexa",
                                                    color: Colors.white,
                                                    fontSize:
                                                        screenHeight * 0.014,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.02,
                                              ),
                                              Image.asset(
                                                'assets/images/TBcurrency.png',
                                                width: 15,
                                                height: 17,
                                              ),
                                              SizedBox(
                                                width: screenWidth * 0.02,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 2),
                                                child: Text(
                                                  "1,500",
                                                  style: TextStyle(
                                                    fontFamily: "Nexa",
                                                    color: Colors.white,
                                                    fontSize:
                                                        screenHeight * 0.016,
                                                    fontWeight:
                                                        FontWeight.normal,
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
                                  child: Container(
                                    height: 2,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            255, 177, 51, 1)),
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color.fromRGBO(
                                        234, 234, 234, 0.35),
                                  ),
                                  width: screenWidth * 0.30,
                                  height: screenHeight * 0.10,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: screenHeight * 0.010,
                                      ),
                                      Image.asset(
                                          'assets/images/trophy_icon.png',
                                          width: screenWidth * 0.10,
                                          height: screenHeight * 0.040),
                                      SizedBox(
                                        height: screenHeight * 0.010,
                                      ),
                                      Text(
                                        "5,000",
                                        style: TextStyle(
                                          fontFamily: "Nexa",
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenHeight * 0.023,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.010,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color.fromRGBO(255, 255, 255, 1)
                                    .withOpacity(0.10),
                              ),
                              width: double.infinity,
                              height: screenHeight * 0.04,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(width: screenWidth * 0.04),
                                  Text(
                                    "Starts |",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontWeight: FontWeight.w400,
                                      fontSize: screenHeight * 0.013,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    " 10 Jul, 09:45",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenHeight * 0.014,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: Container(
                                      width: screenWidth * 0.18,
                                      height: screenHeight * 0.020,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 255, 80, 53),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 2),
                                            child: Text(
                                              "23:54",
                                              style: TextStyle(
                                                fontFamily: "Nexa",
                                                fontSize: screenHeight * 0.012,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.00,
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  Text(
                                    "Ends |",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontWeight: FontWeight.w400,
                                      fontSize: screenHeight * 0.013,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    " 10 Jul, 15:45",
                                    style: TextStyle(
                                      fontFamily: "Nexa",
                                      fontSize: screenHeight * 0.014,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.04),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.010,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(05),
                                color: const Color.fromRGBO(45, 45, 45, 1)
                                    .withOpacity(0.40),
                              ),
                              width: double.infinity,
                              height: screenHeight * 0.04,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 2),
                                      child: Image.asset(
                                        'assets/images/Single_entry.png',
                                        fit: BoxFit.fill,
                                        width: 15,
                                        height: screenHeight * 0.015,
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Text(
                                      "Single Entry",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontSize: screenHeight * 0.013,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 2),
                                      child: Image.asset(
                                        'assets/images/group.png',
                                        fit: BoxFit.fill,
                                        width: 14,
                                        height: screenHeight * 0.015,
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Text(
                                      "Flexible",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontSize: screenHeight * 0.013,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 2),
                                      child: SizedBox(
                                        width: 15,
                                        height: 16,
                                        child: Image.asset(
                                          'assets/images/cup.png',
                                          fit: BoxFit.fill,
                                          width: 0,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Text(
                                      "45%",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontSize: screenHeight * 0.013,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Winners",
                                      style: TextStyle(
                                        fontFamily: "Nexa",
                                        fontSize: screenHeight * 0.013,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: screenHeight * 0.48,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: screenWidth * 0.90,
                              height: screenHeight * 0.19,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
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
                                                  const Color.fromARGB(255, 0, 0, 0),
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
                                                  const Color.fromARGB(255, 0, 0, 0),
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
                                                  const Color.fromARGB(255, 0, 0, 0),
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
                                                  const Color.fromARGB(255, 0, 0, 0),
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
                              height: screenHeight * 0.02,
                            ),
                            Center(
                              child: Container(
                                width: screenWidth * 0.90,
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
              ],
            ),
            Positioned(
              left: screenWidth * 0.04,
              top: screenHeight * 0.90,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: screenWidth * 0.92,
                  height: screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 211, 169, 1),
                    borderRadius: BorderRadius.circular(18),
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
          ],
        ),
      ),
    );
  }
}

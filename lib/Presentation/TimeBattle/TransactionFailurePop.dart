import 'package:flutter/material.dart';

class Transactionfailurepop extends StatefulWidget {
  const Transactionfailurepop({super.key});

  @override
  State<Transactionfailurepop> createState() => _TransactionfailurepopState();
}

class _TransactionfailurepopState extends State<Transactionfailurepop> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.030, right: screenWidth * 0.030),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Container(
              width: screenWidth * 0.999,
              height: screenHeight * 0.08,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 81, 53, 1),
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
                    "OOPS!!",
                    style: TextStyle(
                      fontFamily: "Nexa",
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: screenHeight * 0.025,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth * 0.999,
              height: screenHeight * 0.58,
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
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Text(
                    "There was some technical issue \n             while adding coins",
                    style: TextStyle(
                      fontFamily: "Nexa",
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: screenHeight * 0.020,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.170,
                    width: screenWidth * 0.999,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: screenHeight * 0.140,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                        Positioned(
                          top: screenHeight * 0.045,
                          left: screenWidth * 0.36,
                          child: Image.asset("assets/images/Currency2.png"),
                        ),
                        // Positioned(
                        //     top: screenHeight * 0.032,
                        //     left: screenWidth * 0.53,
                        //     child: Image.asset(
                        //         "assets/images/Donebackground.png")),
                        // Positioned(
                        //   top: screenHeight * 0.05,
                        //   left: screenWidth * 0.56,
                        //   child: Image.asset("assets/images/Done.png"),
                        // ),
                        Positioned(
                          top: screenHeight * 0.032,
                          left: screenWidth * 0.53,
                          child: Image.asset("assets/images/Polygon 7.png"),
                        ),
                        Positioned(
                          top: screenHeight * 0.05,
                          left: screenWidth * 0.588,
                          child: Image.asset("assets/images/Opps.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Container(
                    height: screenHeight * 0.140,
                    width: screenWidth * 0.800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(247, 247, 247, 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Please Wait For Sometime",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: screenWidth * 0.040,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: screenWidth * 0.100,
                                height: screenHeight * 0.001,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(156, 156, 156, 1),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.03,
                              ),
                              Text(
                                "OR",
                                style: TextStyle(
                                  fontFamily: "Nexa",
                                  color: const Color.fromRGBO(156, 156, 156, 1),
                                  fontSize: screenWidth * 0.025,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.03,
                              ),
                              Container(
                                width: screenWidth * 0.100,
                                height: screenHeight * 0.001,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(156, 156, 156, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Please Try After Sometime",
                          style: TextStyle(
                            fontFamily: "Nexa",
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: screenWidth * 0.040,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pop(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const EntryFeeScreen()),
                      // );
                    },
                    child: Container(
                      width: screenWidth * 0.85,
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
                            "Close",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

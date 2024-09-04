import 'package:flutter/material.dart';

class QuestionTab extends StatelessWidget {

  final String? question;
  final List<String>? options;
  final Function(String)? onOptionSelected;

  const QuestionTab({
    super.key,
   
    this.question,
    this.options,
    this.onOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
      final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.92,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Question
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1.",
                  style: TextStyle(
                    fontSize: screenHeight * 0.020,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: screenWidth * 0.02),
                Expanded(
                  child: Text(
                    "hello",
                    style: TextStyle(
                      fontSize: screenHeight * 0.020,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            // Options
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // onOptionSelected(options[index]);
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: screenHeight * 0.01),
                      width: double.infinity,
                      height: screenHeight * 0.06,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 19, 18, 18)
                            .withOpacity(0.10),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Center(
                        child: Text(
                          // options[index],
                          "ok"
                          ,
                          style: TextStyle(
                            fontSize: screenHeight * 0.023,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromRGBO(41, 41, 41, 1),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

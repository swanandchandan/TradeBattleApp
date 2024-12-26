import 'package:flutter/material.dart';
import 'dart:async';

class TimeQuiz extends StatefulWidget {
  const TimeQuiz({super.key});

  @override
  State<TimeQuiz> createState() => _TimeQuizState();
}

class _TimeQuizState extends State<TimeQuiz> {
  int? _selectedOption;
  int currentQuestionIndex = 0;
  final int totalQuestions = 7;
  Timer? _timer;
  int _remainingTime = 15; // Timer duration
  bool isTimerRunning = false;

  final List<Map<String, dynamic>> questions = [
    {
      'question': 'What is your name?',
      'options': ['John', 'Jane', 'Alex', 'Doe']
    },
    {
      'question': 'What is your age?',
      'options': ['18', '20', '25', '30']
    },
    {
      'question': 'Where do you live?',
      'options': ['New York', 'London', 'Paris', 'Tokyo']
    },
    {
      'question': 'What is the capital of France?',
      'options': ['Paris', 'London', 'Berlin', 'Rome']
    },
    {
      'question': 'Who wrote "Romeo and Juliet"?',
      'options': ['Shakespeare', 'Hemingway', 'Dickens', 'Austen']
    },
    {
      'question': 'What is the largest planet in our solar system?',
      'options': ['Jupiter', 'Earth', 'Saturn', 'Mars']
    },
    {
      'question': 'Which is the smallest continent?',
      'options': ['Australia', 'Asia', 'Africa', 'Europe']
    },
  ];

  // Timer Logic
  void startTimer() {
    _timer?.cancel(); // Cancel any running timer
    setState(() {
      _remainingTime = 15;
      isTimerRunning = true;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          moveToNextQuestion();
        }
      });
    });
  }

  // Logic to Move to the Next Question
  void moveToNextQuestion() {
    _timer?.cancel();
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        _selectedOption = null; // Reset selection
      });
      startTimer(); // Restart the timer for the next question
    } else {
      setState(() {
        isTimerRunning = false;
      });
      print('Quiz Completed!');
    }
  }

  @override
  void initState() {
    super.initState();
    startTimer(); // Start the timer at the beginning
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    final currentQuestion = questions[currentQuestionIndex];
    final String questionText = currentQuestion['question'];
    final List<String> options = List<String>.from(currentQuestion['options']);

    return Container(
      width: double.infinity,
      height: screenHeight * 0.6,
      color: Colors.white,
      child: Column(
        children: [
          Text(
            "Question ${currentQuestionIndex + 1} of $totalQuestions",
            style: TextStyle(
              fontSize: screenWidth * 0.045,
              fontWeight: FontWeight.w700,
              fontFamily: "Nexa",
              color: const Color.fromRGBO(156, 156, 156, 1),
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          // Display Remaining Timer
          Text(
            "Time Left: $_remainingTime seconds",
            style: TextStyle(
              fontSize: screenWidth * 0.045,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          QuestionDisplay(text: questionText, screenWidth: screenWidth),
          SizedBox(height: screenHeight * 0.04),
          Expanded(
            child: OptionsDisplay(
              options: options,
              isGrid: false,
              selectedOption: _selectedOption,
              onOptionTap: (index) {
                setState(() {
                  _selectedOption = index;
                });
                moveToNextQuestion(); // Automatically move to the next question
              },
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionDisplay extends StatelessWidget {
  final String text;
  final double screenWidth;

  const QuestionDisplay({
    super.key,
    required this.text,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: screenWidth * 0.05,
            fontWeight: FontWeight.bold,
            fontFamily: "Nexa",
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class OptionsDisplay extends StatelessWidget {
  final List<String> options;
  final bool isGrid;
  final int? selectedOption;
  final Function(int) onOptionTap;

  const OptionsDisplay({
    super.key,
    required this.options,
    required this.isGrid,
    required this.selectedOption,
    required this.onOptionTap,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight * 0.4,
      child: isGrid
          ? GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 2.5,
              ),
              itemCount: options.length,
              itemBuilder: (context, index) {
                return OptionWidget(
                  text: options[index],
                  isSelected: selectedOption == index,
                  onTap: () => onOptionTap(index),
                );
              },
            )
          : ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: options.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: OptionWidget(
                    text: options[index],
                    isSelected: selectedOption == index,
                    onTap: () => onOptionTap(index),
                  ),
                );
              },
            ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionWidget({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenWidth * 0.900,
        height: screenHeight * 0.070,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(247, 247, 247, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.red : Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: "Nexa",
            ),
          ),
        ),
      ),
    );
  }
}

















































// import 'package:flutter/material.dart';
// import 'dart:async';

// class TimeQuiz extends StatefulWidget {
//   const TimeQuiz({super.key});

//   @override
//   State<TimeQuiz> createState() => _TimeQuizState();
// }

// class _TimeQuizState extends State<TimeQuiz> {
//   int? _selectedOption;
//   int currentQuestionIndex = 0;
//   final int totalQuestions = 7;
//   Timer? _timer;
//   bool isTimerRunning = false;

//   final List<Map<String, dynamic>> questions = [
//     {
//       'question': 'What is your name?',
//       'options': ['John', 'Jane', 'Alex', 'Doe']
//     },
//     {
//       'question': 'What is your age?',
//       'options': ['18', '20', '25', '30']
//     },
//     {
//       'question': 'Where do you live?',
//       'options': ['New York', 'London', 'Paris', 'Tokyo']
//     },
//     {
//       'question': 'What is the capital of France?',
//       'options': ['Paris', 'London', 'Berlin', 'Rome']
//     },
//     {
//       'question': 'Who wrote "Romeo and Juliet"?',
//       'options': ['Shakespeare', 'Hemingway', 'Dickens', 'Austen']
//     },
//     {
//       'question': 'What is the largest planet in our solar system?',
//       'options': ['Jupiter', 'Earth', 'Saturn', 'Mars']
//     },
//     {
//       'question': 'Which is the smallest continent?',
//       'options': ['Australia', 'Asia', 'Africa', 'Europe']
//     },
//   ];

//   // Function to start the timer
//   void startTimer() {
//     if (_timer != null) {
//       _timer!.cancel(); // Cancel any existing timer
//     }
//     setState(() {
//       isTimerRunning = true;
//     });

//     // Timer will run for 15 seconds
//     _timer = Timer(Duration(seconds: 15), () {
//       moveToNextQuestion(); // Move to the next question after 15 seconds
//     });
//   }

//   // Function to move to the next question
//   void moveToNextQuestion() {
//     if (currentQuestionIndex < questions.length - 1) {
//       setState(() {
//         currentQuestionIndex++; // Go to the next question
//         _selectedOption = null;
//         isTimerRunning = false; // Stop the current timer
//         // Start the timer for the next question after a slight delay
//         Future.delayed(Duration(seconds: 1), () {
//           startTimer(); // Restart the timer for the next question
//         });
//       });
//     } else {
//       setState(() {
//         isTimerRunning = false; // No more questions, stop the timer
//       });
//       print('Quiz Completed!');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     startTimer(); // Start the timer when the quiz starts
//   }

//   @override
//   void dispose() {
//     if (_timer != null) {
//       _timer!.cancel();
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     final double screenWidth = MediaQuery.of(context).size.width;

//     final currentQuestion = questions[currentQuestionIndex];
//     final String questionText = currentQuestion['question'];
//     final List<String> options = List<String>.from(currentQuestion['options']);

//     return Container(
//       width: double.infinity,
//       height: screenHeight * 0.6,
//       color: Colors.white,
//       child: Column(
//         children: [
//           Text(
//             "Question ${currentQuestionIndex + 1} of $totalQuestions",
//             style: TextStyle(
//               fontSize: screenWidth * 0.045,
//               fontWeight: FontWeight.w700,
//               fontFamily: "Nexa",
//               color: const Color.fromRGBO(156, 156, 156, 1),
//             ),
//           ),
//           SizedBox(height: screenHeight * 0.02),
//           QuestionDisplay(text: questionText, screenWidth: screenWidth),
//           SizedBox(height: screenHeight * 0.04),
//           Expanded(
//             child: OptionsDisplay(
//               options: options,
//               isGrid: false,
//               selectedOption: _selectedOption,
//               onOptionTap: (index) {
//                 setState(() {
//                   _selectedOption = index;
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class QuestionDisplay extends StatelessWidget {
//   final String text;
//   final double screenWidth;

//   const QuestionDisplay({
//     super.key,
//     required this.text,
//     required this.screenWidth,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           text,
//           style: TextStyle(
//             fontSize: screenWidth * 0.05,
//             fontWeight: FontWeight.bold,
//             fontFamily: "Nexa",
//             color: Colors.black,
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ],
//     );
//   }
// }

// class OptionsDisplay extends StatelessWidget {
//   final List<String> options;
//   final bool isGrid;
//   final int? selectedOption;
//   final Function(int) onOptionTap;

//   const OptionsDisplay({
//     super.key,
//     required this.options,
//     required this.isGrid,
//     required this.selectedOption,
//     required this.onOptionTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;

//     return SizedBox(
//       height: screenHeight * 0.4,
//       child: isGrid
//           ? GridView.builder(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 16,
//                 crossAxisSpacing: 16,
//                 childAspectRatio: 2.5,
//               ),
//               itemCount: options.length,
//               itemBuilder: (context, index) {
//                 return OptionWidget(
//                   text: options[index],
//                   isSelected: selectedOption == index,
//                   onTap: () => onOptionTap(index),
//                 );
//               },
//             )
//           : ListView.builder(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               itemCount: options.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 10),
//                   child: OptionWidget(
//                     text: options[index],
//                     isSelected: selectedOption == index,
//                     onTap: () => onOptionTap(index),
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }

// class OptionWidget extends StatelessWidget {
//   final String text;
//   final bool isSelected;
//   final VoidCallback onTap;

//   const OptionWidget({
//     super.key,
//     required this.text,
//     required this.isSelected,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     final double screenWidth = MediaQuery.of(context).size.width;
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: screenWidth * 0.900,
//         height: screenHeight * 0.070,
//         decoration: BoxDecoration(
//           color: const Color.fromRGBO(247, 247, 247, 1),
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               color: isSelected ? Colors.red : Colors.black,
//               fontWeight: FontWeight.bold,
//               fontFamily: "Nexa",
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'dart:async'; // Import Timer

// class TimeQuiz extends StatefulWidget {
//   const TimeQuiz({super.key});

//   @override
//   State<TimeQuiz> createState() => _TimeQuizState();
// }

// class _TimeQuizState extends State<TimeQuiz> {
//   int? _selectedOption;
//   int currentQuestionIndex = 0; // Track the current question index
//   final int totalQuestions = 7; // Total number of questions
//   Timer? _timer; // Timer to handle the 15-second countdown
//   bool isTimerRunning = false; // Check if the timer is running

//   final List<Map<String, dynamic>> questions = [
//     {
//       'question': 'What is your name?',
//       'options': ['John', 'Jane', 'Alex', 'Doe']
//     },
//     {
//       'question': 'What is your age?',
//       'options': ['18', '20', '25', '30']
//     },
//     {
//       'question': 'Where do you live?',
//       'options': ['New York', 'London', 'Paris', 'Tokyo']
//     },
//     {
//       'question': 'What is the capital of France?',
//       'options': ['Paris', 'London', 'Berlin', 'Rome']
//     },
//     {
//       'question': 'Who wrote "Romeo and Juliet"?',
//       'options': ['Shakespeare', 'Hemingway', 'Dickens', 'Austen']
//     },
//     {
//       'question': 'What is the largest planet in our solar system?',
//       'options': ['Jupiter', 'Earth', 'Saturn', 'Mars']
//     },
//     {
//       'question': 'Which is the smallest continent?',
//       'options': ['Australia', 'Asia', 'Africa', 'Europe']
//     },
//     // Add more questions here
//   ];

//   // Function to start the timer
//   void startTimer() {
//     if (_timer != null) {
//       _timer!.cancel(); // Cancel any existing timer
//     }
//     setState(() {
//       isTimerRunning = true;
//     });

//     // Timer will run for 15 seconds
//     _timer = Timer(Duration(seconds: 15), () {
//       moveToNextQuestion(); // Move to the next question after 15 seconds
//     });
//   }

//   // Function to move to the next question
//   void moveToNextQuestion() {
//     if (currentQuestionIndex < questions.length - 1) {
//       setState(() {
//         currentQuestionIndex++; // Go to the next question
//         _selectedOption = null;
//         isTimerRunning =
//             false; // Stop the timer before starting it again // Reset the selected option
//       });

//       // Start the timer for the next question after a delay
//       Future.delayed(Duration(milliseconds: 100), () {
//         startTimer(); // Restart the timer for the next question
//       });
//     } else {
//       setState(() {
//         isTimerRunning = false; // No more questions, stop the timer
//       });
//       print('Quiz Completed!');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     startTimer(); // Start the timer when the quiz starts
//   }

//   @override
//   void dispose() {
//     if (_timer != null) {
//       _timer!.cancel(); // Cancel the timer if the page is closed
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     final double screenWidth = MediaQuery.of(context).size.width;

//     // Get current question and options
//     final currentQuestion = questions[currentQuestionIndex];
//     final String questionText = currentQuestion['question'];
//     final List<String> options = List<String>.from(currentQuestion['options']);

//     return Container(
//       width: double.infinity,
//       height: screenHeight * 0.6,
//       color: Colors.white,
//       child: Column(
//         children: [
//           // Question Number Display
//           Text(
//             "Question ${currentQuestionIndex + 1} of $totalQuestions",
//             style: TextStyle(
//               fontSize: screenWidth * 0.045,
//               fontWeight: FontWeight.w700,
//               fontFamily: "Nexa",
//               color: const Color.fromRGBO(156, 156, 156, 1),
//             ),
//           ),
//           SizedBox(height: screenHeight * 0.02),

//           // Question Display
//           QuestionDisplay(
//             text: questionText,
//             screenWidth: screenWidth,
//           ),
//           SizedBox(height: screenHeight * 0.04),

//           // Options Display
//           Expanded(
//             child: OptionsDisplay(
//               options: options,
//               isGrid: false, // Set false if no image is used
//               selectedOption: _selectedOption,
//               onOptionTap: (index) {
//                 setState(() {
//                   _selectedOption = index; // Update selected option
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class QuestionDisplay extends StatelessWidget {
//   final String text;
//   final double screenWidth;

//   const QuestionDisplay({
//     super.key,
//     required this.text,
//     required this.screenWidth,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           text,
//           style: TextStyle(
//             fontSize: screenWidth * 0.05,
//             fontWeight: FontWeight.bold,
//             fontFamily: "Nexa",
//             color: Colors.black,
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ],
//     );
//   }
// }

// class OptionsDisplay extends StatelessWidget {
//   final List<String> options;
//   final bool isGrid;
//   final int? selectedOption;
//   final Function(int) onOptionTap;

//   const OptionsDisplay({
//     super.key,
//     required this.options,
//     required this.isGrid,
//     required this.selectedOption,
//     required this.onOptionTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;

//     return SizedBox(
//       height: screenHeight * 0.4,
//       child: isGrid
//           ? GridView.builder(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 16,
//                 crossAxisSpacing: 16,
//                 childAspectRatio: 2.5,
//               ),
//               itemCount: options.length,
//               itemBuilder: (context, index) {
//                 return OptionWidget(
//                   text: options[index],
//                   isSelected: selectedOption == index,
//                   onTap: () => onOptionTap(index),
//                 );
//               },
//             )
//           : ListView.builder(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               itemCount: options.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 10),
//                   child: OptionWidget(
//                     text: options[index],
//                     isSelected: selectedOption == index,
//                     onTap: () => onOptionTap(index),
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }

// class OptionWidget extends StatelessWidget {
//   final String text;
//   final bool isSelected;
//   final VoidCallback onTap;

//   const OptionWidget({
//     super.key,
//     required this.text,
//     required this.isSelected,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     final double screenWidth = MediaQuery.of(context).size.width;
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: screenWidth * 0.900,
//         height: screenHeight * 0.070,
//         decoration: BoxDecoration(
//           color: const Color.fromRGBO(247, 247, 247, 1),
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               color: isSelected ? Colors.red : Colors.black,
//               fontWeight: FontWeight.bold,
//               fontFamily: "Nexa",
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class TimeQuiz extends StatefulWidget {
//   const TimeQuiz({super.key});

//   @override
//   State<TimeQuiz> createState() => _TimeQuizState();
// }

// class _TimeQuizState extends State<TimeQuiz> {
//   // This will track the selected option for now (use dynamic data later)
//   int? _selectedOption;
//   int currentQuestionIndex = 0; // Track the current question index
//   final int totalQuestions = 7; // Total number of questions
//    Timer? _timer; // Timer to handle the 15-second countdown
//   bool isTimerRunning = false; // Check if the timer is running

//  final List<Map<String, dynamic>> questions = [
//     {
//       'question': 'What is your name?',
//       'options': ['John', 'Jane', 'Alex', 'Doe']
//     },
//     {
//       'question': 'What is your age?',
//       'options': ['18', '20', '25', '30']
//     },
//     {
//       'question': 'Where do you live?',
//       'options': ['New York', 'London', 'Paris', 'Tokyo']
//     },
//     // Add more questions here
//   ];

//  // Function to start the timer
//   void startTimer() {
//     if (_timer != null) {
//       _timer!.cancel(); // Cancel any existing timer
//     }
//     setState(() {
//       isTimerRunning = true;
//     });

//     // Timer will run for 15 seconds
//     _timer = Timer(Duration(seconds: 15), () {
//       moveToNextQuestion(); // Move to the next question after 15 seconds
//     });
//   }

//   // Function to move to the next question
//   void moveToNextQuestion() {
//     if (currentQuestionIndex < questions.length - 1) {
//       setState(() {
//         currentQuestionIndex++; // Go to the next question
//       });
//       startTimer(); // Restart the timer for the next question
//     } else {
//       setState(() {
//         isTimerRunning = false; // No more questions, stop the timer
//       });
//       print('Quiz Completed!');
//     }
//   }

//  // UI to display the current question and options
//   @override
//   void initState() {
//     super.initState();
//     startTimer(); // Start the timer when the quiz starts
//   }

//   @override
//   void dispose() {
//     if (_timer != null) {
//       _timer!.cancel(); // Cancel the timer if the page is closed
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     final double screenWidth = MediaQuery.of(context).size.width;

//     // Example data: Text-only question
//     final bool hasImage = false; // Change this to true for text+image questions
//     // final List<String> questions = [
//     //   "What's the difference between investors and traders?",
//     //   "What is the definition of a stock?",
//     //   "How do bonds work?",
//     //   "What is a dividend?",
//     //   "What is a mutual fund?",
//     //   "What is technical analysis?",
//     //   "What is fundamental analysis?",
//     // ];
//       // List of questions and options

//     // final String questionText = questions[currentQuestionIndex];

//     // Example data: Text-only question
//     // final bool hasImage = false; // Change this to true for text+image questions
//     // final String questionText =
//     //     "What's the difference between investors and traders?";
//     final String? questionImage =
//         hasImage ? 'assets/images/Stockimage.png' : null;
//     final List<String> options = [
//       "Option 1",
//       "Option 2",
//       "Option 3",
//       "Option 4"
//     ];

//     return

//         Container(
//       width: double.infinity,
//       height: screenHeight * 0.6,
//       color: Colors.white,
//       child: Column(
//         children: [
//           // Question Number Display
//           Text(
//             "Question ${currentQuestionIndex + 1} of $totalQuestions",
//             // Dynamic question number questions[currentQuestionIndex]

//             style: TextStyle(
//               fontSize: screenWidth * 0.045,
//               fontWeight: FontWeight.w700,
//               fontFamily: "Nexa",
//               color: const Color.fromRGBO(156, 156, 156, 1),
//             ),
//           ),

//           SizedBox(height: screenHeight * 0.02),
//           // Question Display
//           QuestionDisplay(
//             text: questionText,
//             imagePath: questionImage,
//             screenWidth: screenWidth,
//           ),
//           SizedBox(height: screenHeight * 0.04),
//           // Options Display (Grid or List)
//           Expanded(
//             child: OptionsDisplay(
//               options: options,
//               isGrid: hasImage, // Use grid if there's an image
//               selectedOption: _selectedOption,
//               onOptionTap: (index) {
//                 setState(() {
//                   _selectedOption = index; // Update selected option
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Widget to display the question text and optional image
// class QuestionDisplay extends StatelessWidget {
//   final String text;
//   final String? imagePath;
//   final double screenWidth;

//   const QuestionDisplay({
//     super.key,
//     required this.text,
//     this.imagePath,
//     required this.screenWidth,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           text,
//           style: TextStyle(
//             fontSize: screenWidth * 0.05,
//             fontWeight: FontWeight.bold,
//             fontFamily: "Nexa",
//             color: Colors.black,
//           ),
//           textAlign: TextAlign.center,
//         ),
//         if (imagePath != null) ...[
//           const SizedBox(height: 16),
//           Image.asset("assets/images/Stockimage.png", width: screenWidth * 0.8),
//         ],
//       ],
//     );
//   }
// }

// class OptionsDisplay extends StatelessWidget {
//   final List<String> options;
//   final bool isGrid;
//   final int? selectedOption;
//   final Function(int) onOptionTap;

//   const OptionsDisplay({
//     super.key,
//     required this.options,
//     required this.isGrid,
//     required this.selectedOption,
//     required this.onOptionTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;

//     return SizedBox(
//       height: screenHeight * 0.4, // Adjust height as needed
//       child: isGrid
//           ? GridView.builder(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 16,
//                 crossAxisSpacing: 16,
//                 childAspectRatio: 2.5,
//               ),
//               itemCount: options.length,
//               itemBuilder: (context, index) {
//                 return OptionWidget(
//                   text: options[index],
//                   isSelected: selectedOption == index,
//                   onTap: () => onOptionTap(index),
//                 );
//               },
//             )
//           : ListView.builder(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               itemCount: options.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 10),
//                   child: OptionWidget(
//                     text: options[index],
//                     isSelected: selectedOption == index,
//                     onTap: () => onOptionTap(index),
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }

// // Reusable widget for a single option
// class OptionWidget extends StatelessWidget {
//   final String text;
//   final bool isSelected;
//   final VoidCallback onTap;

//   const OptionWidget({
//     super.key,
//     required this.text,
//     required this.isSelected,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     final double screenWidth = MediaQuery.of(context).size.width;
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: screenWidth * 0.900,
//         height: screenHeight * 0.070,
//         decoration: BoxDecoration(
//           color: const Color.fromRGBO(247, 247, 247, 1),
//           borderRadius: BorderRadius.circular(15),
//         ),
//         // decoration: BoxDecoration(
//         //   color: isSelected
//         //       ? Colors.green
//         //       : const Color.fromRGBO(247, 247, 247, 1),
//         //   borderRadius: BorderRadius.circular(15),
//         // ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               color: isSelected ? Colors.red : Colors.black,
//               fontWeight: FontWeight.bold,
//               fontFamily: "Nexa",
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

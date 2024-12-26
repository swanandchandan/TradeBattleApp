import 'dart:async';
import 'package:flutter/material.dart';



class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;
  int bonusPoints = 0;
  int remainingTime = 15;
  Timer? timer;
  bool isAnswered = false;

  // Dummy questions and answers
  List<Map<String, dynamic>> questions = [
    {
      'question': 'What is the capital of France?',
      'options': ['Berlin', 'Madrid', 'Paris', 'Rome'],
      'answer': 'Paris'
    },
    {
      'question': 'What is 5 + 3?',
      'options': ['5', '8', '10', '15'],
      'answer': '8'
    },
    {
      'question': 'Who wrote Hamlet?',
      'options': ['Shakespeare', 'Dante', 'Homer', 'Tolstoy'],
      'answer': 'Shakespeare'
    },
    {
      'question': 'What is the boiling point of water?',
      'options': ['50°C', '70°C', '100°C', '150°C'],
      'answer': '100°C'
    },
  ];

  // To track response times for calculating the fastest answer bonus
  List<int> responseTimes = [];

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (remainingTime > 0) {
        setState(() {
          remainingTime--;
        });
      } else {
        // Time's up
        timer.cancel();
        moveToNextQuestion();
      }
    });
  }

  void checkAnswer(String selectedOption) {
    if (!isAnswered) {
      timer?.cancel();
      isAnswered = true;
      int timeTaken = 15 - remainingTime; // Time taken to answer

      if (selectedOption == questions[currentQuestionIndex]['answer']) {
        int questionScore = 10;
        int baseBonus = (remainingTime ~/ 2); // Faster answers get higher bonus
        int speedBonus = (15 - timeTaken) * 2; // Reward faster responses

        setState(() {
          score += questionScore;
          bonusPoints += baseBonus + speedBonus;
        });
      }

      responseTimes.add(timeTaken); // Track time taken for each question
      moveToNextQuestion();
    }
  }

  void moveToNextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        remainingTime = 15;
        isAnswered = false;
      });
      startTimer();
    } else {
      // Quiz finished
      timer?.cancel();
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Quiz Finished!'),
          content: Text(
              'Your Score: $score\nBonus Points: $bonusPoints\nTotal: ${score + bonusPoints}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                resetQuiz();
              },
              child: Text('Restart'),
            )
          ],
        ),
      );
    }
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      score = 0;
      bonusPoints = 0;
      remainingTime = 15;
      isAnswered = false;
      responseTimes.clear();
    });
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Battle Quiz'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question ${currentQuestionIndex + 1}/${questions.length}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              questions[currentQuestionIndex]['question'],
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Column(
              children: questions[currentQuestionIndex]['options']
                  .map<Widget>((option) => ElevatedButton(
                        onPressed: () => checkAnswer(option),
                        child: Text(option),
                      ))
                  .toList(),
            ),
            Spacer(),
            Text(
              'Time Left: $remainingTime seconds',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            SizedBox(height: 10),
            Text(
              'Score: $score',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Bonus Points: $bonusPoints',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


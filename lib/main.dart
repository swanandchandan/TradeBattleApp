import 'package:dummy_tradebattle/Practice/exampleTimeQuiz.dart';
import 'package:dummy_tradebattle/Presentation/PredictBattle/TradebattleScreen.dart';
import 'package:dummy_tradebattle/Presentation/TimeBattle/TimeQuizScreen.dart';
import 'package:dummy_tradebattle/Presentation/TimeBattle/timeProvider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
   
  runApp(  const DummyTradeBattle(), );
}

class DummyTradeBattle extends StatelessWidget {
  const DummyTradeBattle({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   "/": (context) => const Tradebattlescreen(),
      // "/live": (context) => const Live_event(),
      // "/completed": (context) => const Completed_event(),
      // "/first_entry": (context) => const First_entry(),
      // "/Multiplier_Screen": (context) => const Multiplier_screen(),
      // "/Fee_breakdown": (context) => const Multiplier_screen(),
      // "/current_balance": (context) => const Multiplier_screen(),
      // "/Entry1_postview": (context) => const Multiplier_screen(),
      // },
      home: TimeScreenQuiz(),
    );
  }
}


import 'package:dummy_tradebattle/Presentation/PredictBattle/WidgetsMain/HimalayansageCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dummy_TradeBattle());
}

class Dummy_TradeBattle extends StatelessWidget {
  const Dummy_TradeBattle({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   "/": (context) => const MobileLayout(),
      //   "/live": (context) => const Live_event(),
      //   "/completed": (context) => const Completed_event(),
      //   "/first_entry": (context) => const First_entry(),
      //   "/Multiplier_Screen": (context) => const Multiplier_screen(),
      //   "/Fee_breakdown": (context) => const Multiplier_screen(),
      //   "/current_balance": (context) => const Multiplier_screen(),
      //   "/Entry1_postview": (context) => const Multiplier_screen(),
      // },
      home: HimalayanSageCard(),
    );
  }
}

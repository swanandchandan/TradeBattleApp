import 'package:dummy_tradebattle/Presentation/PredictBattle/Join_card.dart';
import "package:flutter/material.dart";

class Joinpredictbattlescreen extends StatefulWidget {
  const Joinpredictbattlescreen({super.key});

  @override
  State<Joinpredictbattlescreen> createState() =>
      _JoinpredictbattlescreenState();
}

class _JoinpredictbattlescreenState extends State<Joinpredictbattlescreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: 15,
      itemBuilder: (context, index) {
        return const JoinPredictCard();
      },
    );
  }
}

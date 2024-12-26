import 'package:dummy_tradebattle/Presentation/PredictBattle/HimaliyanSageCard.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/JoinSoloTab.dart';

import "package:flutter/material.dart";

class Joinsoloscreen extends StatefulWidget {
  const Joinsoloscreen({super.key});

  @override
  State<Joinsoloscreen> createState() => _JoinsoloscreenState();
}

class _JoinsoloscreenState extends State<Joinsoloscreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return CustomScrollView(slivers: [
      SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
      SliverList.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Joinsolotab();
        },
      ),
    ]);
    // ListView.builder(
    //   // physics: const NeverScrollableScrollPhysics(),
    //   itemCount: 15,
    //   itemBuilder: (context, index) {
    //     return const JoinPredictCard();
    //   },
    // );
  }
}

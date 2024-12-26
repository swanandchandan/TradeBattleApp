import 'package:dummy_tradebattle/Presentation/PredictBattle/JoinPredictBattleScreen.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/JoinSoloTab.dart';
import 'package:dummy_tradebattle/Presentation/SoloBattle/JoinsoloScreen.dart';
import 'package:dummy_tradebattle/Presentation/TimeBattle/TimeCompletedScreen.dart';
import 'package:flutter/material.dart';

class JoinScreen extends StatefulWidget {
  const JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _tabs = ['Solo', 'Time', 'League', "Predict"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: screenWidth * 0.35,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(247, 247, 247, 1),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18)),
            ),
            child: Column(children: [
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Container(
                width: screenWidth * 0.90,
                height: screenHeight * 0.045,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(11),
                ),
                child: TabBar(
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenHeight * 0.015,
                    fontFamily: "Nexa",
                  ),
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: _tabController,
                  indicator: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: _tabs.map((tab) {
                    return Tab(text: tab);
                  }).toList(),
                ),
              ),
            ]),
          ),
        ),
        SliverFillRemaining(
          child: TabBarView(controller: _tabController, children: const [
            Joinsoloscreen(),
            Timecompletedscreen(),
            Center(
              child: Text("League"),
            ),
            Joinpredictbattlescreen(),
          ]),
        )
      ],
    );
  }
}

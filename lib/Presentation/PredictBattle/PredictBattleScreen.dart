// import 'package:flutter/material.dart';

// class Predictbattlescreen extends StatefulWidget {
//   const Predictbattlescreen({super.key});
//   @override
//   State<Predictbattlescreen> createState() => _PredictbattlescreenState();
// }

// class _PredictbattlescreenState extends State<Predictbattlescreen>
//     with TickerProviderStateMixin {
//   late TabController _tabController;
//   final List<String> _tabs = [
//     'Upcoming',
//     'Live',
//     'Completed',
//   ];
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: _tabs.length, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     final double screenWidth = MediaQuery.of(context).size.width;
//     return Column(
//       children: [
//         Container(
//           height: screenHeight * 0.030,
//           color: Color.fromRGBO(183, 28, 126, 1),
//           child: TabBar(
//             controller: _tabController,
//             dividerColor: Colors.transparent,
//             indicator: const BoxDecoration(),
//             tabs:[
//              Tab(text: "My Battle"),
//                         Tab(text: "Join"),
//                          Tab(text: "Join"),
//             ]
//           ),
//         ),
//         Expanded(
//           child: TabBarView(controller: _tabController, children: const [
//             Center(child: Text("Upcoming")),
//             Center(child: Text("Live")),
//             Center(child: Text("Completed")),
//           ]),
//         )
//       ],
//     );
//   }
// }

import 'package:dummy_tradebattle/Presentation/PredictBattle/MyBattle/CompletedScreen.dart';
import 'package:dummy_tradebattle/Presentation/PredictBattle/MyBattle/LiveScreen.dart';
import 'package:dummy_tradebattle/Presentation/PredictBattle/MyBattle/UpcomingScreen.dart';

import 'package:flutter/material.dart';

class PredictBattleScreen extends StatefulWidget {
  const PredictBattleScreen({super.key});

  @override
  State<PredictBattleScreen> createState() => _PredictBattleScreenState();
}

class _PredictBattleScreenState extends State<PredictBattleScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _tabs = ['Upcoming', 'Live', 'Completed'];
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    scrollController = ScrollController();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return CustomScrollView(slivers: [
      // SliverOverlapInjector(
      //   handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      // ),
      SliverFillRemaining(
        // hasScrollBody: false,
        child: Column(children: [
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Container(
            width: screenWidth * 0.90,
            height: screenHeight * 0.065,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(247, 247, 247, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TabBar(
              labelStyle: const TextStyle(
                fontFamily: "Nexa",
              ),
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              controller: _tabController,
              indicator: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: _tabs.map((tab) {
                return Tab(text: tab);
              }).toList(),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Upcomingscreen(),
                Livescreen(),
                Completedscreen(),
              ],
            ),
          ),
        ]),
      ),
    ]);
  }
}

// void main() {
//   runApp(const MaterialApp(home: PredictBattleScreen()));
// }

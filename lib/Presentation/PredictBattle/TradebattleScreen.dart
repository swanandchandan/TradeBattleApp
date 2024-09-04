import 'package:dummy_tradebattle/Presentation/PredictBattle/Join_Screen.dart';
import 'package:dummy_tradebattle/Presentation/PredictBattle/MyBattle/Mybattle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Tradebattlescreen extends StatefulWidget {
  const Tradebattlescreen({super.key});

  @override
  State<Tradebattlescreen> createState() => _TradebattlescreenState();
}

class _TradebattlescreenState extends State<Tradebattlescreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController controller;
  late Animation<Color?> animation;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    controller = ScrollController();
    animation = ColorTween(
      begin: const Color.fromRGBO(243, 103, 47, 1),
      end: null,
    ).animate(
      CurvedAnimation(
        parent: _tabController.animation!,
        curve: Curves.easeIn,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: animation.value,
      backgroundColor: Colors.white,
      body: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                expandedHeight: 230,
                backgroundColor:
                    innerBoxIsScrolled ? Colors.transparent : Colors.white,
                shadowColor: Colors.transparent,
                elevation: 0,
                surfaceTintColor: Colors.transparent,
                forceElevated: innerBoxIsScrolled,
                clipBehavior: Clip.antiAlias,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(15),
                    ),
                    child: ColoredBox(
                      color: const Color.fromRGBO(255, 81, 53, 1),
                      // innerBoxIsScrolled
                      //     ? Colors.transparent
                      //     : const Color.fromRGBO(255, 81, 53, 1),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Transform.translate(
                              offset: const Offset(0, kToolbarHeight * 6),
                              child: Transform.scale(
                                scale: 5,
                                child: ColorFiltered(
                                  colorFilter:
                                      const ColorFilter.matrix(<double>[
                                    -1.0, 0.0, 0.0, 0.0, 255.0, //
                                    0.0, -1.0, 0.0, 0.0, 255.0, //
                                    0.0, 0.0, -1.0, 0.0, 255.0, //
                                    0.0, 0.0, 0.0, 1.0, 0.0, //
                                  ]),
                                  child: Opacity(
                                    opacity: 0.35,
                                    child: SvgPicture.asset(
                                        "assets/svg/Layered_shapd.svg"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: screenHeight * 0.080,
                            left: screenWidth * 0.06,
                            child: Text(
                              "Trade Battle",
                              style: TextStyle(
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: "Nexa",
                                  fontWeight: FontWeight.w700,
                                  fontSize: screenHeight * 0.038),
                            ),
                          ),
                          Positioned(
                            top: screenHeight * 0.084,
                            left: screenWidth * 0.65,
                            child: Container(
                              height: screenHeight * 0.040,
                              width: screenWidth * 0.30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.white, width: 1),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/TBcurrency.png',
                                    width: screenWidth * 0.05,
                                    height: screenHeight * 0.05,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: screenWidth * 0.010,
                                        top: screenHeight * 0.005),
                                    child: Text(
                                      "45,000",
                                      style: TextStyle(
                                          fontFamily: "Nexa",
                                          color: Colors.white,
                                          fontSize: screenHeight * 0.020,
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                pinned: true,
                floating: true,
                snap: true,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(90),
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: kToolbarHeight / 4,
                      left: kToolbarHeight / 2,
                      right: kToolbarHeight / 2,
                      bottom: kToolbarHeight / 3,
                    ),
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(176, 56, 37, 1),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        width: 1,
                      ),
                    ),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: const TextStyle(
                        fontFamily: "Nexa",
                      ),
                      dividerColor: Colors.transparent,
                      controller: _tabController,
                      indicator: BoxDecoration(
                        border: const Border(
                          bottom: BorderSide(color: Colors.transparent),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.white,
                      tabs: const [
                        Tab(text: "My Battle"),
                        Tab(text: "Join"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: const [
            MyBattleScreen(),
            JoinScreen(),
          ],
        ),
      ),
    );
  }
}

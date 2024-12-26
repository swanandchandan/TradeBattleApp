import 'package:dummy_tradebattle/Presentation/PredictBattle/PredictBattleScreen.dart';
import 'package:flutter/material.dart';

class MyBattleScreen extends StatefulWidget {
  const MyBattleScreen({
    super.key,
  });

  @override
  State<MyBattleScreen> createState() => _MyBattleScreenState();
}

class _MyBattleScreenState extends State<MyBattleScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController scrollController;

  final List<Color> _indicatorColors = [
    const Color.fromRGBO(83, 71, 203, 1),
    const Color.fromRGBO(0, 211, 169, 1),
    const Color.fromRGBO(255, 81, 53, 1),
    Colors.black,
  ];

  //  final List<Color> _textColors = [
  //   Colors.red,
  //   Colors.green,
  //   Colors.blue,
  //   Colors.orange,
  // ];

  final List<String> _tabTitles = [
    'Solo',
    'Time',
    'League',
    "Predict",
  ];

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    _tabController =
        TabController(length: _indicatorColors.length, vsync: this);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging || !_tabController.indexIsChanging) {
        setState(() {});
      }
    });
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
    // final double screenWidth = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    top: 2,
                    left: 20,
                    right: 20,
                    bottom: 2,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        offset: const Offset(0, 3),
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    dividerColor: Colors.transparent,
                    indicator: DotTabIndicatior(
                      color: _indicatorColors[
                          _tabController.index % _indicatorColors.length],
                      radius: 4,
                    ),
                    labelStyle: const TextStyle(
                      fontFamily: "Nexa",
                    ),
                    tabs: List.generate(
                      _tabTitles.length,
                      (index) => Tab(
                        child: Text(
                          _tabTitles[index],
                          style: TextStyle(
                            color: _tabController.index == index
                                ? _indicatorColors[index]
                                : Colors
                                    .black, // Default color when not selected
                            fontWeight: _tabController.index == index
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: screenHeight * 0.9, // Adjust the height as needed
                //   child: TabBarView(
                //     controller: _tabController,
                //     children: const [
                //       Center(
                //         child: Text("Solo"),
                //       ),
                //       Center(
                //         child: Text("Time"),
                //       ),
                //       Center(
                //         child: Text("League"),
                //       ),
                //       PredictBattleScreen(),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: SizedBox(
            height: screenHeight * 0.9,
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(
                  child: Text("Solo"),
                ),
                Center(
                  child: Text("Time"),
                ),
                Center(
                  child: Text("League"),
                ),
                PredictBattleScreen(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class DotTabIndicatior extends Decoration {
  final Color color;
  final double radius;
  const DotTabIndicatior({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _DotPainter(color: color, radius: radius);
  }
}

class _DotPainter extends BoxPainter {
  final Color color;
  double radius;
  _DotPainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint()
      ..color = color
      ..isAntiAlias = true;

    final Offset dotOffset = Offset(
      configuration.size!.width / 2,
      configuration.size!.height / 2 + (radius * 4.5),
    );

    canvas.drawCircle(offset + dotOffset, radius, paint);
  }
}

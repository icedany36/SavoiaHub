import 'dart:async';

import 'package:flutter/material.dart';
import 'package:savoiahub/pages/Projects_Screen/projects_screen.dart';
import 'package:savoiahub/pages/map_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swipe/swipe.dart';

void main() => runApp(const MainPage());

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  final controller = PageController(initialPage: 0);
  TabController? controller2;
  int selectWidget = 0;

  void changeWidget(int index) {
    setState(() {
      selectWidget = index;
    });
  }

  @override
  void initState() {
    controller2 = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final displayWidth;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(controller),
    );
  }
}

class Home extends StatelessWidget {
  Home(PageController controller, {super.key});

  int _currentIndex = 0;
  List<IconData> data = [
    Icons.search,
    Icons.edit,
    Icons.add,
  ];

  List<Color> dotColors = const [
    Color.fromARGB(255, 211, 1, 2),
    Color.fromARGB(255, 133, 153, 0),
    Color.fromARGB(255, 38, 139, 210),
  ];

  List<BottomNavigationBarItem> testtt = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.search),
      backgroundColor: Colors.red,
      label: 'test2',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.plus_one),
      backgroundColor: Colors.blue,
      label: 'test',
    ),
  ];

  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 43, 54),
      extendBody: true,
      // TODO: theme instead of backgroundColor
      bottomNavigationBar: Swipe(
        onSwipeLeft: () {
          _currentIndex += 1;
          controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut);
        },
        onSwipeRight: () {
          _currentIndex -= 1;
          controller.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut);
        },
        child: Padding(
          padding: EdgeInsets.only(
              bottom: 30,
              left: MediaQuery.of(context).size.width / 4,
              right: MediaQuery.of(context).size.width / 4),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            child: SizedBox(
              height: 70,
              child: BottomNavigationBar(
                selectedItemColor: Colors.grey,
                unselectedItemColor: Colors.white,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                backgroundColor: Colors.black,
                iconSize: 35,
                onTap: (int index) {},
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    backgroundColor: Colors.red,
                    label: 'test2',
                    tooltip: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.plus_one),
                    backgroundColor: Colors.blue,
                    label: 'test',
                    tooltip: '',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(children: [
        PageView(
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (value) {},
          controller: controller,
          children: [
            const MapPage(),
            ProjectsScreen(),
            Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
            )
          ],
        ),
        SafeArea(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: dotColors[_currentIndex],
                  dotColor: Colors.black,
                  dotHeight: 25,
                  dotWidth: 25,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

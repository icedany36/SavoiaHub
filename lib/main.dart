import 'package:flutter/material.dart';
import 'package:savoiahub/pages/projects_page.dart';
import 'package:savoiahub/pages/map_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swipe/swipe.dart';

void main() => runApp(const MainPage());

final controller = PageController(initialPage: 1);

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController? controller2;

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(controller),
    );
  }
}

class Home extends StatefulWidget {
  const Home(PageController controller, {super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  int _currentIndex = 0;
  var animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    animation = Tween(begin: 3.0, end: 0.0).animate(animationController);

    animationController.forward();
  }

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

  var controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 43, 54),
      extendBody: true,
      // TODO: theme instead of backgroundColor
      bottomNavigationBar: Swipe(
        onSwipeLeft: () async {
          ExtensionIsVisibile = false;

          controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut);

          await Future.delayed(const Duration(milliseconds: 150));

          setState(() {
            _currentIndex += 1;
          });
          animationController.forward(from: 0.0);
        },
        onSwipeRight: () async {
          controller.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut);

          await Future.delayed(const Duration(milliseconds: 150));

          setState(() {
            _currentIndex -= 1;
            animation = animation;
          });
          animationController.forward(from: 0.0);
        },
        child: Padding(
          padding: EdgeInsets.only(
              bottom: 30,
              left: MediaQuery.of(context).size.width / 5,
              right: MediaQuery.of(context).size.width / 5),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            child: SizedBox(
              height: 70,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                backgroundColor: Colors.black,
                iconSize: 35,
                currentIndex: _currentIndex,
                onTap: (int index) {
                  switch (_currentIndex) {
                    case 0:
                      MapToolsController(index, context);
                      break;

                    case 1:
                      break;

                    case 2:
                      break;

                    case 3:
                      break;

                    default:
                  }
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'test1',
                    tooltip: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.looks_one),
                    label: 'test2',
                    tooltip: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.looks_two),
                    label: 'test3',
                    tooltip: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.looks_3),
                    label: 'test4',
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
            ),
          ],
        ),
        dotIndicator(controller, _currentIndex, animation)
      ]),
    );
  }
}

Widget dotIndicator(
    PageController controller, int currentIndex, Animation<double> animation) {
  List<Color> dotColors = const [
    Color.fromARGB(255, 211, 1, 2),
    Color.fromARGB(255, 133, 153, 0),
    Color.fromARGB(255, 38, 139, 210),
  ];

  return SafeArea(
    child: FadeTransition(
      opacity: animation,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Align(
          alignment: Alignment.topCenter,
          child: SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: dotColors[currentIndex],
              dotColor: Colors.white.withOpacity(0.5),
              dotHeight: 25,
              dotWidth: 25,
            ),
          ),
        ),
      ),
    ),
  );
}

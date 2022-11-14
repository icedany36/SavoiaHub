import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swipe/swipe.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key});

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Swipe(
        onSwipeLeft: () => controller.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut),
        onSwipeRight: () => controller.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut),
        child: Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * .05),
          height: 75,
          decoration: BoxDecoration(color: Colors.transparent),
        ),
      ),
    );
  }
}

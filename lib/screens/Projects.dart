import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Navigation Bar
      backgroundColor: Color.fromARGB(255, 49, 49, 49),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromARGB(255, 49, 49, 49),
          buttonBackgroundColor: Color.fromARGB(255, 49, 49, 49),
          color: Color.fromARGB(255, 29, 29, 29),
          items: const [
            Icon(Icons.home, color: Color.fromARGB(255, 119, 119, 119)),
            Icon(Icons.bubble_chart, color: Color.fromARGB(255, 119, 119, 119)),
            Icon(Icons.person, color: Color.fromARGB(255, 119, 119, 119)),
          ]),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 75),

          // Explore the Projects
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Explore the School Projects',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.white70),
            ),
          ),

          const SizedBox(height: 25),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                border: null,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                        height: 30,
                        child: const Icon(Icons.search,
                            color: Color.fromARGB(255, 49, 49, 49))),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search a Project',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

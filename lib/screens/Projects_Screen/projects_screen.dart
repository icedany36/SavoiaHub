import 'dart:developer';
import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:savoiahub/screens/Projects_Screen/square.dart';
import 'package:savoiahub/util/project.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';

class ProjectsScreen extends StatelessWidget {
  ProjectsScreen({super.key});

  final List posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
    'post 6',
    'post 7',
    'post 8',
    'post 9',
  ];

  int gridNumber(double screenWidth) {
    if (screenWidth < 500) {
      return 3;
    } else if (screenWidth < 1100) {
      return 5;
    } else {
      return 7;
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    int deviceType;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 49, 49, 49),

      // Navigation Bar
      /* bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: const Color.fromARGB(255, 49, 49, 49),
          buttonBackgroundColor: const Color.fromARGB(255, 49, 49, 49),
          color: const Color.fromARGB(255, 29, 29, 29),
          items: const [
            Icon(Icons.home, color: Color.fromARGB(255, 119, 119, 119)),
            Icon(Icons.bubble_chart, color: Color.fromARGB(255, 119, 119, 119)),
            Icon(Icons.person, color: Color.fromARGB(255, 119, 119, 119)),
          ]), */

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

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

            // Search Bar
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
                    const Expanded(
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

            const SizedBox(height: 25),

            AspectRatio(
                aspectRatio: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: gridNumber(screenWidth)),
                    itemBuilder: ((context, index) {
                      return Project();
                    }),
                  ),
                )

                /*ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return const ProjectsSquare();
              },
            ),*/
                ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(CupertinoIcons.ellipsis_vertical_circle_fill),
        disabledElevation: 0,
        tooltip: 'Tools',
        onPressed: () {
          // TODO: Add Page Tools
        },
      ),
    );
  }
}

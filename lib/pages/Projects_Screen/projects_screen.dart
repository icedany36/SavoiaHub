import 'package:flutter/material.dart';
import 'package:savoiahub/util/project.dart';
import 'package:flutter/cupertino.dart';
import 'package:swipe/swipe.dart';

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
    'post 9',
    'post 9',
    'post 9',
    'post 9',
    'post 9',
    'post 9',
    'post 9',
    'post 9',
    'post 9',
    'post 9',
    'post 9',
    'post 9',
    'post 9',
    'post 9',
    'post 40',
    'post 9',
    'post 9',
    'post 9',
    'post 9',
    'post 9',
    'post 30',
    'post 9',
    'post 9',
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

// Show Page Tools
    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            /*content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  MaterialButton(onPressed: (() {
                    print("fine");
                  }))
                ],
              ),
            ), */
            actions: <Widget>[
              MaterialButton(
                child: Icon(Icons.add),
                onPressed: () {
                  //Navigator.of(context).pop();
                  print("It Works!");
                },
              ),
              MaterialButton(
                child: Icon(Icons.delete),
                onPressed: () {
                  //Navigator.of(context).pop();
                  print("It Works!");
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Swipe(
          onSwipeUp: () => _showMyDialog(),
          child: SafeArea(
            child: Column(
              children: [
                Container(
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Container(
                                    height: 30,
                                    child: const Icon(Icons.search,
                                        color:
                                            Color.fromARGB(255, 49, 49, 49))),
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
                        aspectRatio: 1 / 2,
                        child: GridView.builder(
                          itemCount: posts.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: gridNumber(screenWidth)),
                          itemBuilder: ((context, index) {
                            return Project();
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      /* floatingActionButton: FloatingActionButton(
        child: const Icon(CupertinoIcons.ellipsis_vertical_circle_fill),
        disabledElevation: 0,
        tooltip: 'Tools',
        onPressed: () {
          _showMyDialog();
        },
      ), */
    );
  }
}

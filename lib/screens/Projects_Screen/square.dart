import 'package:flutter/material.dart';

class ProjectsSquare extends StatelessWidget {
  const ProjectsSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          height: 400,
          color: Colors.red,
        ));
  }
}

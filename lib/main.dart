import 'package:flutter/material.dart';
import 'package:savoiahub/screens/Projects_Screen/projects_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SavoiaHub',
        home: ProjectsScreen());
  }
}

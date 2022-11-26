import 'package:flutter/material.dart';

class BarExtension extends StatelessWidget {
  const BarExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Padding(
          padding: EdgeInsets.only(
              bottom: 30,
              left: MediaQuery.of(context).size.width / 5,
              right: MediaQuery.of(context).size.width / 5)),
    );
  }
}

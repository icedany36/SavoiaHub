import 'package:flutter/material.dart';

class BarExtension extends StatelessWidget {
  const BarExtension({super.key});

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      elevation: 30,
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
        builder: (context, scrollController) => const SingleChildScrollView(
          child: BarExtension(),
        ),
      ),
    );
  }

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

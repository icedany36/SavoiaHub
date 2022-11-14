import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:swipe/swipe.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> with SingleTickerProviderStateMixin {
  double x = 0.0;
  double y = 0.0;

  late TransformationController controller;
  TapDownDetails? tapDownDetails;

  late AnimationController animationController;
  Animation<Matrix4>? animation;

  @override
  void initState() {
    super.initState();

    controller = TransformationController();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300))
      ..addListener(() {
        controller.value = animation!.value;
      });
  }

  // dispose
  @override
  void dispose() {
    controller.dispose();
    animationController.dispose();

    super.dispose();
  }

  // update mouse position
  void _updateLocation(PointerEvent details) {
    setState(() {
      x = details.localPosition.dx;
      y = details.localPosition.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    final displayWidth = MediaQuery.of(context).size.width.toDouble();
    final displayHeight = MediaQuery.of(context).size.height.toDouble();

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: buildImage(displayWidth, displayHeight),
    );
  }

  Widget buildImage(final displayWidth, final displayHeight) => MouseRegion(
        onHover: _updateLocation,
        child: GestureDetector(
          onDoubleTapDown: (details) => tapDownDetails = details,
          onDoubleTap: () {
            final position = tapDownDetails!.localPosition;

            const double scale = 8;
            final x = -position.dx * (scale - 1);
            final y = -position.dy * (scale - 1);
            final zoomed = Matrix4.identity()
              ..translate(x, y)
              ..scale(scale);

            final end =
                controller.value.isIdentity() ? zoomed : Matrix4.identity();

            animation = Matrix4Tween(
              begin: controller.value,
              end: end,
            ).animate(
              CurveTween(curve: Curves.easeOut).animate(animationController),
            );

            animationController.forward(from: 0);
          },
          child: InteractiveViewer(
            clipBehavior: Clip.none, // to show the image in fullscreen
            minScale: 1,
            maxScale: 6,
            transformationController: controller,
            child: SafeArea(
              child: Stack(
                children: [
                  Center(
                    child: FittedBox(
                      child: RepaintBoundary(
                        child: CustomPaint(
                          size: Size(displayWidth, displayWidth * 0.6),
                          painter: ImagePainter(),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '($displayWidth, $displayHeight) ($x, $y)',
                    style: const TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

class ImagePainter extends CustomPainter {
  ImagePainter();

  @override
  void paint(Canvas canvas, Size size) {
    print('Starting to draw...');

    final paint = Paint()
      ..color = Color.fromARGB(255, 101, 123, 131)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1046000, size.height * (1 / 3));
    path0.lineTo(size.width * 0.1046000, size.height * 0.4206714);
    path0.lineTo(size.width * 0.1181118, size.height * 0.4206714);
    path0.lineTo(size.width * 0.1181118, size.height * 0.7578857);
    path0.lineTo(size.width * 0.0320882, size.height * 0.7578857);
    path0.lineTo(size.width * 0.0320882, size.height * 0.7988857);
    path0.lineTo(size.width * 0.3507353, size.height * 0.8071143);
    path0.lineTo(size.width * 0.3507353, size.height * 0.9259286);
    path0.lineTo(size.width * 0.4957412, size.height * 0.9259286);
    path0.lineTo(size.width * 0.4940059, size.height * 0.8071143);
    path0.lineTo(size.width * 0.4164824, size.height * 0.8071143);
    path0.lineTo(size.width * 0.4148471, size.height * 0.7374429);
    path0.lineTo(size.width * 0.7283353, size.height * 0.7414571);
    path0.lineTo(size.width * 0.7280765, size.height * 0.7254571);
    path0.lineTo(size.width * 0.7806588, size.height * 0.7252000);
    path0.lineTo(size.width * 0.7806588, size.height * 0.6883000);
    path0.lineTo(size.width * 0.6476059, size.height * 0.6888143);
    path0.lineTo(size.width * 0.6474882, size.height * 0.5205429);
    path0.lineTo(size.width * 0.7687353, size.height * 0.5212857);
    path0.lineTo(size.width * 0.7688059, size.height * 0.4285857);
    path0.lineTo(size.width * 0.8598706, size.height * 0.4303429);
    path0.lineTo(size.width * 0.8598706, size.height * 0.3073429);
    path0.lineTo(size.width * 0.9424824, size.height * 0.3073429);
    path0.lineTo(size.width * 0.9424824, size.height * 0.3567429);
    path0.lineTo(size.width * 0.9745176, size.height * 0.3567429);
    path0.lineTo(size.width * 0.9740059, size.height * 0.2563571);
    path0.lineTo(size.width * 0.8598706, size.height * 0.2543429);
    path0.lineTo(size.width * 0.8598706, size.height * 0.0661000);
    path0.lineTo(size.width * 0.8134412, size.height * 0.0647714);
    path0.lineTo(size.width * 0.8126353, size.height * 0.3813714);
    path0.lineTo(size.width * 0.7317941, size.height * 0.3773714);
    path0.lineTo(size.width * 0.7317941, size.height * 0.4466857);
    path0.lineTo(size.width * 0.6139824, size.height * 0.4437571);
    path0.lineTo(size.width * 0.6137412, size.height * 0.6883000);
    path0.lineTo(size.width * 0.3490647, size.height * 0.6842429);
    path0.lineTo(size.width * 0.3489471, size.height * 0.7651714);
    path0.lineTo(size.width * 0.1388647, size.height * 0.7609286);
    path0.lineTo(size.width * 0.1400235, size.height * 0.4201857);
    path0.lineTo(size.width * 0.2512529, size.height * 0.4261429);
    path0.lineTo(size.width * 0.2512529, size.height * 0.3894429);
    path0.lineTo(size.width * 0.2732412, size.height * 0.3894429);
    path0.lineTo(size.width * 0.2732412, size.height * 0.3322429);
    path0.lineTo(size.width * 0.3785294, size.height * 0.3361571);
    path0.lineTo(size.width * 0.3787941, size.height * 0.2913143);
    path0.lineTo(size.width * 0.2568647, size.height * 0.2898714);
    path0.lineTo(size.width * 0.2571706, size.height * 0.3465714);
    path0.lineTo(size.width * 0.2054824, size.height * 0.3466714);
    path0.lineTo(size.width * 0.2056941, size.height * 0.3811571);
    path0.lineTo(size.width * 0.2007353, size.height * 0.3813714);
    path0.lineTo(size.width * 0.2007353, size.height * 0.2668143);
    path0.lineTo(size.width * 0.1871824, size.height * 0.2668143);
    path0.lineTo(size.width * 0.1871824, size.height * 0.1724000);
    path0.lineTo(size.width * 0.1669824, size.height * 0.1721571);
    path0.lineTo(size.width * 0.1669824, size.height * 0.2661286);
    path0.lineTo(size.width * 0.1535412, size.height * 0.2668143);
    path0.lineTo(size.width * 0.1536353, size.height * 0.3640143);
    path0.lineTo(size.width * 0.1888824, size.height * 0.3649143);
    path0.lineTo(size.width * 0.1888824, size.height * 0.3793571);
    path0.lineTo(size.width * 0.1492824, size.height * 0.3774143);
    path0.lineTo(size.width * 0.1488294, size.height * 0.3445000);
    path0.lineTo(size.width * 0.1046000, size.height * 0.3445000);
    path0.quadraticBezierTo(30, 0, 0, 30);
    path0.close();

    canvas.drawPath(path0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

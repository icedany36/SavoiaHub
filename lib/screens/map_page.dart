import 'dart:io';

import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> with SingleTickerProviderStateMixin {
  GlobalKey globalKey = GlobalKey();

  ui.Image? image;

  double x = 0.0;
  double y = 0.0;

  late TransformationController controller;
  TapDownDetails? tapDownDetails;

  late AnimationController animationController;
  Animation<Matrix4>? animation;

  @override
  void initState() {
    _load('assets/firstFloor.png');
    super.initState();

    controller = TransformationController();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    )..addListener(() {
        controller.value = animation!.value;
      });
  }

  void _load(String path) async {
    var bytes = await rootBundle.load(path);
    image = await decodeImageFromList(bytes.buffer.asUint8List());
    setState(() {});
  }

  @override
  void dispose() {
    controller.dispose();
    animationController.dispose();

    super.dispose();
  }

  void _updateLocation(TapDownDetails details) {
    setState(() {
      x = details.localPosition.dx;
      y = details.localPosition.dy;

      print("WIDTH: " + x.toString());
      print("HEIGHT: " + y.toString());
    });
  }

  Future<ui.Image> getUiImage(File file) async {
    final data = await file.readAsBytes();
    return await decodeImageFromList(data);
  }

  Future<ui.Image> loadUiImage(String imageAssetPath) async {
    final ByteData data = await rootBundle.load(imageAssetPath);
    final Completer<ui.Image> completer = Completer();
    ui.decodeImageFromList(Uint8List.view(data.buffer), (ui.Image img) {
      return completer.complete(img);
    });
    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width.toDouble();
    final height = MediaQuery.of(context).size.height.toDouble();

    // Image schoolMap = AssetImage('assets/firstFloor.png') as Image;

    // Future<ui.Image> myBackground = loadUiImage('assets/firstFloor.png');
    // Future<ui.Image> wow = getUiImage(myBackground);

    //ui.Image image = getUiImage(file);

    // Scaffold(
    // navigationBar
    /* bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          buttonBackgroundColor: Color.fromARGB(0, 255, 255, 255),
          color: const Color.fromARGB(255, 29, 29, 29),
          items: const [
            Icon(Icons.home, color: Color.fromARGB(255, 119, 119, 119)),
            Icon(Icons.bubble_chart, color: Color.fromARGB(255, 119, 119, 119)),
            Icon(
              Icons.person,
              color: Color.fromARGB(255, 119, 119, 119),
            ),
          ],
        ),

        backgroundColor: Color.fromARGB(255, 255, 255, 255), */
    return Container(
      color: Colors.black,
      // alignment: Alignment.center,
      child: buildImage(width, height),
    );
    // );
  }

  Widget buildImage(final width, final height) => GestureDetector(
        onTapDown: (details) => _updateLocation(details),
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

          print("THIS::::: " + width.toString() + ", " + height.toString());
        },
        child: MouseRegion(
          // onHover: _updateLocation,
          child: InteractiveViewer(
            //boundaryMargin: EdgeInsets.all(20),
            clipBehavior: Clip.none, // to show the image in fullscreen
            minScale: 1,
            maxScale: 6,
            transformationController: controller,
            child: Stack(
              children: [
                FittedBox(
                  child: SizedBox(
                    width: image?.width.toDouble(),
                    height: image?.height.toDouble(),
                    child: RepaintBoundary(
                      child: CustomPaint(
                        size: Size(width, width * 0.6),
                        willChange: true,
                        isComplex: false,
                        painter: ImagePainter(context: context, image: image),
                      ),
                    ),
                  ),
                ),
                Text(
                  '($width, $height) (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
                  textScaleFactor: 0.5,
                ),
              ],
            ),
          ),
        ),
      );
}

class ImagePainter extends CustomPainter {
  ui.Image? image;
  final BuildContext context;

  ImagePainter({required this.context, required this.image});

  @override
  void paint(Canvas canvas, Size size) {
    print('DOOOOINNNGG...');

    final paint = Paint()
      ..color = const Color.fromARGB(255, 0, 204, 255)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1046000, size.height * 0.3445000);
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
    path0.close();

    canvas.drawPath(path0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

Future<ui.Image> loadUiImage(String imageAssetPath) async {
  final ByteData data = await rootBundle.load(imageAssetPath);
  final Completer<ui.Image> completer = Completer();
  ui.decodeImageFromList(Uint8List.view(data.buffer), (ui.Image img) {
    return completer.complete(img);
  });
  return completer.future;
}

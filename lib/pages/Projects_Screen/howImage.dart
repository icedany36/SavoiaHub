/// import 'dart:async';
/// import 'package:flutter/material.dart';
/// import 'dart:ui' as ui;
/// import 'package:flutter/services.dart';
/// 
///   @override
///  void initState() {
///    _load('assets/firstFloor.png');
///    super.initState();
///
///    controller = TransformationController();
///  }
/// 
///  void _load(String path) async {
///    var bytes = await rootBundle.load(path);
///    image = await decodeImageFromList(bytes.buffer.asUint8List());
///    setState(() {});
///  }
/// 
/// ui.Image? image;
/// painter: ImagePainter(context: context, image: image),
/// 
/// 
/// 
/// class ImagePainter extends CustomPainter {
/// ui.Image? image;
/// final BuildContext context;
/// 
/// ImagePainter({required this.context, required this.image});
/// }
/// 
/// Future<ui.Image> loadUiImage(String imageAssetPath) async {
///  final ByteData data = await rootBundle.load(imageAssetPath);
///  final Completer<ui.Image> completer = Completer();
///  ui.decodeImageFromList(Uint8List.view(data.buffer), (ui.Image img) {
///    return completer.complete(img);
///  });
///  return completer.future;
///}
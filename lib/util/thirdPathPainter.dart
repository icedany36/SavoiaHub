import 'package:flutter/material.dart';

import '../pages/map_page.dart';

class ThirdPathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();

    Paint paint = Paint()
      ..color = Color.fromARGB(255, 0, 238, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    List<dynamic> fastesPath = FastPath.output;
    List<dynamic> thirdFloorPath = [];

    List<Size> thirdFloorNodes = [];

    for (var i = 0; i < 200; i++) {
      thirdFloorNodes.insert(i, const Size(0, 0));
    }

    thirdFloorNodes.insertAll(200, [
      Size(size.width * 0.1412500, size.height * 0.3969167),
      Size(size.width * 0.1409625, size.height * 0.4284833),
      Size(size.width * 0.1402875, size.height * 0.4580833),
      Size(size.width * 0.0855250, size.height * 0.4578167),
      Size(size.width * 0.2172625, size.height * 0.4298667),
      Size(size.width * 0.2562500, size.height * 0.4300000),
      Size(size.width * 0.3090375, size.height * 0.4312833),
      Size(size.width * 0.3574000, size.height * 0.4315333),
      Size(size.width * 0.3571000, size.height * 0.4919167),
      Size(size.width * 0.3854000, size.height * 0.4920500),
      Size(size.width * 0.4155750, size.height * 0.4303833),
      Size(size.width * 0.4862500, size.height * 0.4316667),
      Size(size.width * 0.5192750, size.height * 0.4328167),
      Size(size.width * 0.5375000, size.height * 0.4333333),
      Size(size.width * 0.5774000, size.height * 0.4337167),
      Size(size.width * 0.5776000, size.height * 0.4529500),
      Size(size.width * 0.5987500, size.height * 0.4533333),
    ]);

    for (var i = 0; i < fastesPath.length; i++) {
      if (fastesPath[i] < 300 && fastesPath[i] >= 200) {
        thirdFloorPath.add(fastesPath[i]);
      } else if (thirdFloorPath.isNotEmpty) {
        if (thirdFloorPath.last != -1) thirdFloorPath.add(-1);
      }
    }
    if (thirdFloorPath.isNotEmpty) {
      if (FastPath.from != null && FastPath.to != null) {
        path.moveTo(thirdFloorNodes[thirdFloorPath[0]].width,
            thirdFloorNodes[thirdFloorPath[0]].height);

        for (int i = 1; i < thirdFloorPath.length - 1; i++) {
          if (thirdFloorPath[i] == -1) {
            path.moveTo(thirdFloorNodes[thirdFloorPath[i + 1]].width,
                thirdFloorNodes[thirdFloorPath[i + 1]].height);
            i++;
          } else {
            path.lineTo(thirdFloorNodes[thirdFloorPath[i]].width,
                thirdFloorNodes[thirdFloorPath[i]].height);
          }
        }

        canvas.drawPath(path, paint);
      }
    } else if (FastPath.from == null && FastPath.to == null) {
      path.reset();
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

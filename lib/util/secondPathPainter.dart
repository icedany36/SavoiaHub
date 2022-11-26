import 'package:flutter/material.dart';

import '../pages/map_page.dart';

class SecondPathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();

    Paint paint = Paint()
      ..color = Color.fromARGB(255, 0, 238, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    List<dynamic> fastesPath = FastPath.output;
    List<dynamic> secondFloorPath = [];

    List<Size> secondFloorNodes = [];

    for (var i = 0; i < 100; i++) {
      secondFloorNodes.insert(i, const Size(0, 0));
    }

    secondFloorNodes.insertAll(100, [
      Size(size.width * 0.1412500, size.height * 0.3116667),
      Size(size.width * 0.1412500, size.height * 0.3416667),
      Size(size.width * 0.1400000, size.height * 0.3783333),
      Size(size.width * 0.1400000, size.height * 0.4250000),
      Size(size.width * 0.1395625, size.height * 0.4587000),
      Size(size.width * 0.0862500, size.height * 0.4583333),
      Size(size.width * 0.1925000, size.height * 0.4600000),
      Size(size.width * 0.2256375, size.height * 0.4597833),
      Size(size.width * 0.2700000, size.height * 0.4616667),
      Size(size.width * 0.3225000, size.height * 0.4626000),
      Size(size.width * 0.3572250, size.height * 0.4620333),
      Size(size.width * 0.3565250, size.height * 0.4946333),
      Size(size.width * 0.3950000, size.height * 0.4931167),
      Size(size.width * 0.3575000, size.height * 0.4314500),
      Size(size.width * 0.4409250, size.height * 0.4326000),
      Size(size.width * 0.4646875, size.height * 0.4326000),
      Size(size.width * 0.5262500, size.height * 0.4350000),
      Size(size.width * 0.5594500, size.height * 0.4351500),
      Size(size.width * 0.4412500, size.height * 0.3883333),
      Size(size.width * 0.4407000, size.height * 0.3065167),
      Size(size.width * 0.4212500, size.height * 0.3055833),
      Size(size.width * 0.3747250, size.height * 0.3115833),
      Size(size.width * 0.3409500, size.height * 0.3114500),
      Size(size.width * 0.2978750, size.height * 0.3110833),
      Size(size.width * 0.2765750, size.height * 0.3109333),
      Size(size.width * 0.2353750, size.height * 0.3003667),
      Size(size.width * 0.2112500, size.height * 0.3000000),
      Size(size.width * 0.2110500, size.height * 0.3146333),
      Size(size.width * 0.1525000, size.height * 0.2833333),
      Size(size.width * 0.1525000, size.height * 0.2633333),
      Size(size.width * 0.1868000, size.height * 0.2621833),
      Size(size.width * 0.1866750, size.height * 0.2924000),
      Size(size.width * 0.1635750, size.height * 0.2920333),
      Size(size.width * 0.2350000, size.height * 0.2716667),
      Size(size.width * 0.2712500, size.height * 0.2719000),
      Size(size.width * 0.2712500, size.height * 0.2816667),
      Size(size.width * 0.4700000, size.height * 0.3066667),
      Size(size.width * 0.5244500, size.height * 0.3127667),
      Size(size.width * 0.5712500, size.height * 0.3133333),
      Size(size.width * 0.6122250, size.height * 0.3134833),
      Size(size.width * 0.6125000, size.height * 0.2700000),
      Size(size.width * 0.6453875, size.height * 0.2705167),
      Size(size.width * 0.6452750, size.height * 0.2009333),
    ]);

    for (var i = 0; i < fastesPath.length; i++) {
      if (fastesPath[i] < 200 && fastesPath[i] >= 100) {
        secondFloorPath.add(fastesPath[i]);
      } else if (secondFloorPath.isNotEmpty) {
        if (secondFloorPath.last != -1) secondFloorPath.add(-1);
      }
    }
    if (secondFloorPath.isNotEmpty) {
      if (FastPath.from != null && FastPath.to != null) {
        path.moveTo(secondFloorNodes[secondFloorPath[0]].width,
            secondFloorNodes[secondFloorPath[0]].height);

        for (int i = 1; i < secondFloorPath.length - 1; i++) {
          if (secondFloorPath[i] == -1) {
            path.moveTo(secondFloorNodes[secondFloorPath[i + 1]].width,
                secondFloorNodes[secondFloorPath[i + 1]].height);
            i++;
          } else {
            path.lineTo(secondFloorNodes[secondFloorPath[i]].width,
                secondFloorNodes[secondFloorPath[i]].height);
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

import 'package:flutter/material.dart';
import 'package:savoiahub/pages/map_page.dart';

class FirstPathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //fastPath.output.add(0);
    Path path = Path();

    Paint paint = Paint()
      ..color = Color.fromARGB(255, 0, 238, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    ;

    List<dynamic> fastesPath = FastPath.output;
    List<dynamic> firstFloorPath = [];

    List<Size> firstFloorNodes = [];

    firstFloorNodes.insertAll(0, [
      Size(size.width * 0.1412500, size.height * 0.3100000),
      Size(size.width * 0.1412500, size.height * 0.3466667),
      Size(size.width * 0.1412500, size.height * 0.3816667),
      Size(size.width * 0.1412500, size.height * 0.4233333),
      Size(size.width * 0.1425000, size.height * 0.4616667),
      Size(size.width * 0.0812500, size.height * 0.4616667),
      Size(size.width * 0.0912500, size.height * 0.4533333),
      Size(size.width * 0.1725000, size.height * 0.4600000),
      Size(size.width * 0.1965500, size.height * 0.4600000),
      Size(size.width * 0.2250000, size.height * 0.4616667),
      Size(size.width * 0.2620250, size.height * 0.4612667),
      Size(size.width * 0.3229750, size.height * 0.4615000),
      Size(size.width * 0.3225000, size.height * 0.4931000),
      Size(size.width * 0.3225000, size.height * 0.5183333),
      Size(size.width * 0.3800000, size.height * 0.4916667),
      Size(size.width * 0.3212500, size.height * 0.4333333),
      Size(size.width * 0.3537500, size.height * 0.4312667),
      Size(size.width * 0.3875000, size.height * 0.4316667),
      Size(size.width * 0.4412500, size.height * 0.4316667),
      Size(size.width * 0.4662500, size.height * 0.4333333),
      Size(size.width * 0.4975000, size.height * 0.4316667),
      Size(size.width * 0.5387500, size.height * 0.4333333),
      Size(size.width * 0.5800000, size.height * 0.4316667),
      Size(size.width * 0.4987500, size.height * 0.3433333),
      Size(size.width * 0.5312500, size.height * 0.3433333),
      Size(size.width * 0.5837500, size.height * 0.3433333),
      Size(size.width * 0.5839250, size.height * 0.3139667),
      Size(size.width * 0.6039250, size.height * 0.3135833),
      Size(size.width * 0.6497000, size.height * 0.3139667),
      Size(size.width * 0.6450000, size.height * 0.2616667),
      Size(size.width * 0.6887500, size.height * 0.2633333),
      Size(size.width * 0.7287500, size.height * 0.2650000),
      Size(size.width * 0.6450000, size.height * 0.2033333),
      Size(size.width * 0.3017250, size.height * 0.2781667),
      Size(size.width * 0.2725000, size.height * 0.2783333),
      Size(size.width * 0.2722000, size.height * 0.2716667),
      Size(size.width * 0.2375000, size.height * 0.2716667),
      Size(size.width * 0.2375000, size.height * 0.2816667),
      Size(size.width * 0.2375000, size.height * 0.3002333),
      Size(size.width * 0.2112500, size.height * 0.3000000),
      Size(size.width * 0.1875750, size.height * 0.3110333),
      Size(size.width * 0.1875000, size.height * 0.2633333),
      Size(size.width * 0.1762500, size.height * 0.2624667),
      Size(size.width * 0.1750000, size.height * 0.2250000),
      Size(size.width * 0.1625000, size.height * 0.2629667),
      Size(size.width * 0.1628250, size.height * 0.2925333),
    ]);

    // print("FastesPathLength: $fastesPath.length");
    // print("FirstFloorPath: $firstFloorPath.length");
    // print("FirstFloorNodes: $firstFloorNodes.length");

    for (var i = 0; i < fastesPath.length; i++) {
      if (fastesPath[i] < 100) {
        firstFloorPath.add(fastesPath[i]);
      } else if (firstFloorPath.isNotEmpty) {
        if (firstFloorPath.last != -1) firstFloorPath.add(-1);
      }
    }

    if (firstFloorPath.isNotEmpty) {
      // print("FirstFloorPath: $firstFloorPath.length");
      if (FastPath.from != null && FastPath.to != null) {
        path.moveTo(firstFloorNodes[firstFloorPath[0]].width,
            firstFloorNodes[firstFloorPath[0]].height);

        for (int i = 1; i < firstFloorPath.length /* maybe -1? */; i++) {
          //-------------<<<<<
          if (firstFloorPath[i] == -1) {
            path.moveTo(firstFloorNodes[firstFloorPath[i + 1]].width,
                firstFloorNodes[firstFloorPath[i + 1]].height);
            i++;
          } else {
            path.lineTo(firstFloorNodes[firstFloorPath[i]].width,
                firstFloorNodes[firstFloorPath[i]].height);
          }
        }
        // print("FirstFloorPath: $firstFloorPath.length");

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

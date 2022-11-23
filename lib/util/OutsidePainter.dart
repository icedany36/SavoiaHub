import 'package:flutter/material.dart';

class OutsidePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint externalBuildings = Paint()
      ..color = Color.fromARGB(255, 33, 78, 87)
      ..style = PaintingStyle.fill;

    Path path1 = Path();
    path1.moveTo(size.width * 0.0271875, size.height * 0.2437500);
    path1.lineTo(size.width * 0.0325000, size.height * 0.2437500);
    path1.lineTo(size.width * 0.0340625, size.height * 0.5158333);
    path1.lineTo(size.width * 0.0287500, size.height * 0.5158333);
    path1.lineTo(size.width * 0.0271875, size.height * 0.2437500);
    path1.close();

    canvas.drawPath(path1, externalBuildings);

    Path path2 = Path();
    path2.moveTo(size.width * 0.0293750, size.height * 0.5833333);
    path2.lineTo(size.width * 0.0357625, size.height * 0.5833333);
    path2.lineTo(size.width * 0.0485750, size.height * 0.7351167);
    path2.lineTo(size.width * 0.0284375, size.height * 0.7362500);
    path2.lineTo(size.width * 0.0293750, size.height * 0.5833333);
    path2.close();

    canvas.drawPath(path2, externalBuildings);

    Path path3 = Path();
    path3.moveTo(size.width * 0.0850000, size.height * 0.5900000);
    path3.lineTo(size.width * 0.2512500, size.height * 0.5916667);
    path3.lineTo(size.width * 0.2512500, size.height * 0.6566667);
    path3.lineTo(size.width * 0.2334375, size.height * 0.6562500);
    path3.lineTo(size.width * 0.2334375, size.height * 0.7808333);
    path3.lineTo(size.width * 0.0912500, size.height * 0.7800000);
    path3.lineTo(size.width * 0.0921875, size.height * 0.7162500);
    path3.lineTo(size.width * 0.0850000, size.height * 0.7150000);
    path3.lineTo(size.width * 0.0850000, size.height * 0.5900000);
    path3.close();

    canvas.drawPath(path3, externalBuildings);

    Path path4 = Path();
    path4.moveTo(size.width * 0.2887500, size.height * 0.6183333);
    path4.lineTo(size.width * 0.2887500, size.height * 0.7500000);
    path4.lineTo(size.width * 0.3612500, size.height * 0.7500000);
    path4.lineTo(size.width * 0.3612500, size.height * 0.6183333);
    path4.lineTo(size.width * 0.2887500, size.height * 0.6183333);
    path4.close();

    canvas.drawPath(path4, externalBuildings);

    Path path5 = Path();
    path5.moveTo(size.width * 0.3825000, size.height * 0.5933333);
    path5.lineTo(size.width * 0.3825000, size.height * 0.6850000);
    path5.lineTo(size.width * 0.4225000, size.height * 0.6850000);
    path5.lineTo(size.width * 0.4225000, size.height * 0.7016667);
    path5.lineTo(size.width * 0.4825000, size.height * 0.7016667);
    path5.lineTo(size.width * 0.4825000, size.height * 0.5933333);
    path5.lineTo(size.width * 0.3825000, size.height * 0.5933333);
    path5.close();

    canvas.drawPath(path5, externalBuildings);

    Path path6 = Path();
    path6.moveTo(size.width * 0.4937500, size.height * 0.6016667);
    path6.lineTo(size.width * 0.4941125, size.height * 0.6716667);
    path6.lineTo(size.width * 0.5325000, size.height * 0.6716667);
    path6.lineTo(size.width * 0.5325000, size.height * 0.6316667);
    path6.lineTo(size.width * 0.5628000, size.height * 0.6320000);
    path6.lineTo(size.width * 0.5631500, size.height * 0.5929333);
    path6.lineTo(size.width * 0.5287500, size.height * 0.5933333);
    path6.lineTo(size.width * 0.5290500, size.height * 0.6017333);
    path6.lineTo(size.width * 0.4937500, size.height * 0.6016667);
    path6.close();

    canvas.drawPath(path6, externalBuildings);

    Path path7 = Path();
    path7.moveTo(size.width * 0.5962500, size.height * 0.5950000);
    path7.lineTo(size.width * 0.5962500, size.height * 0.6666667);
    path7.lineTo(size.width * 0.6487500, size.height * 0.6666667);
    path7.lineTo(size.width * 0.6537500, size.height * 0.5933333);
    path7.lineTo(size.width * 0.5962500, size.height * 0.5950000);
    path7.close();

    canvas.drawPath(path7, externalBuildings);

    Path path8 = Path();
    path8.moveTo(size.width * 0.7162500, size.height * 0.4233333);
    path8.lineTo(size.width * 0.7175000, size.height * 0.4933333);
    path8.lineTo(size.width * 0.9000000, size.height * 0.4933333);
    path8.lineTo(size.width * 0.9000000, size.height * 0.4233333);
    path8.lineTo(size.width * 0.7162500, size.height * 0.4233333);
    path8.close();

    canvas.drawPath(path8, externalBuildings);

    Path path9 = Path();
    path9.moveTo(size.width * 0.9362500, size.height * 0.4233333);
    path9.lineTo(size.width * 0.9362500, size.height * 0.4933333);
    path9.lineTo(size.width * 0.9509500, size.height * 0.4938000);
    path9.lineTo(size.width * 0.9506500, size.height * 0.4233333);
    path9.lineTo(size.width * 0.9362500, size.height * 0.4233333);
    path9.close();

    canvas.drawPath(path9, externalBuildings);

    Path path10 = Path();
    path10.moveTo(size.width * 0.9500000, size.height * 0.1850000);
    path10.lineTo(size.width * 0.8662500, size.height * 0.1733333);
    path10.lineTo(size.width * 0.8612500, size.height * 0.2016667);
    path10.lineTo(size.width * 0.8700000, size.height * 0.2050000);
    path10.lineTo(size.width * 0.8662500, size.height * 0.2333333);
    path10.lineTo(size.width * 0.8462500, size.height * 0.2416667);
    path10.lineTo(size.width * 0.8462500, size.height * 0.2866667);
    path10.lineTo(size.width * 0.9500000, size.height * 0.2966667);
    path10.lineTo(size.width * 0.9500000, size.height * 0.1850000);
    path10.close();

    canvas.drawPath(path10, externalBuildings);

    Path path11 = Path();
    path11.moveTo(size.width * 0.8956500, size.height * 0.1212667);
    path11.lineTo(size.width * 0.8950000, size.height * 0.1466667);
    path11.lineTo(size.width * 0.9500000, size.height * 0.1533333);
    path11.lineTo(size.width * 0.9500000, size.height * 0.1212667);
    path11.lineTo(size.width * 0.8956500, size.height * 0.1212667);
    path11.close();

    canvas.drawPath(path11, externalBuildings);

    Path path12 = Path();
    path12.moveTo(size.width * 0.2837500, size.height * 0.1150000);
    path12.lineTo(size.width * 0.2837500, size.height * 0.1433333);
    path12.lineTo(size.width * 0.3337500, size.height * 0.1500000);
    path12.lineTo(size.width * 0.3337500, size.height * 0.1316667);
    path12.lineTo(size.width * 0.3975000, size.height * 0.1333333);
    path12.lineTo(size.width * 0.3975000, size.height * 0.1166667);
    path12.lineTo(size.width * 0.2837500, size.height * 0.1150000);
    path12.close();

    canvas.drawPath(path12, externalBuildings);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

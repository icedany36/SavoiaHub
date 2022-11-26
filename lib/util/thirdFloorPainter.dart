import 'package:flutter/material.dart';

class ThirdFloorPainter extends CustomPainter {
  static var room = [];

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < 99; i++) {
      room.add(Paint()
        ..color = const Color.fromARGB(255, 181, 137, 0)
        ..style = PaintingStyle.fill);
    }

    Paint elevator = Paint()
      ..color = const Color.fromARGB(255, 34, 116, 109)
      ..style = PaintingStyle.fill
      ..strokeJoin = StrokeJoin.round;

    Paint internalStairs = Paint()
      ..color = const Color.fromARGB(255, 133, 153, 0)
      ..style = PaintingStyle.fill
      ..strokeJoin = StrokeJoin.round;

    Paint FFBase = Paint()
      ..color = const Color.fromARGB(255, 122, 120, 109)
      ..style = PaintingStyle.fill
      ..strokeJoin = StrokeJoin.round;
    ;

    Path base = Path();

    base.moveTo(size.width * 0.0725000, size.height * 0.2200000);
    base.lineTo(size.width * 0.0725000, size.height * 0.5183333);
    base.lineTo(size.width * 0.6412500, size.height * 0.5233333);
    base.lineTo(size.width * 0.6400000, size.height * 0.3600000);
    base.lineTo(size.width * 0.5112500, size.height * 0.3583333);
    base.lineTo(size.width * 0.5100000, size.height * 0.4183333);
    base.lineTo(size.width * 0.4850000, size.height * 0.4183333);
    base.lineTo(size.width * 0.4850000, size.height * 0.3266667);
    base.lineTo(size.width * 0.8025000, size.height * 0.3283333);
    base.lineTo(size.width * 0.8025000, size.height * 0.1783333);
    base.lineTo(size.width * 0.5687500, size.height * 0.1750000);
    base.lineTo(size.width * 0.5687500, size.height * 0.2250000);
    base.lineTo(size.width * 0.0725000, size.height * 0.2200000);
    base.close();

    canvas.drawPath(base, FFBase);

    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 228, 218, 184)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0719375, size.height * 0.3233333);
    path0.lineTo(size.width * 0.0722125, size.height * 0.5170500);
    path0.lineTo(size.width * 0.6381750, size.height * 0.5228167);
    path0.lineTo(size.width * 0.6375000, size.height * 0.3600000);
    path0.lineTo(size.width * 0.5097125, size.height * 0.3587333);
    path0.lineTo(size.width * 0.5096125, size.height * 0.4183000);
    path0.lineTo(size.width * 0.3637500, size.height * 0.4166667);
    path0.lineTo(size.width * 0.3633250, size.height * 0.3897333);
    path0.lineTo(size.width * 0.3435500, size.height * 0.3891333);
    path0.lineTo(size.width * 0.3431500, size.height * 0.4169333);
    path0.lineTo(size.width * 0.1525000, size.height * 0.4133333);
    path0.lineTo(size.width * 0.1522125, size.height * 0.3246167);
    path0.lineTo(size.width * 0.0719375, size.height * 0.3233333);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(size.width * 0.0735500, size.height * 0.3244000);
    path1.lineTo(size.width * 0.0735500, size.height * 0.3530000);
    path1.lineTo(size.width * 0.1512500, size.height * 0.3538667);
    path1.lineTo(size.width * 0.1510500, size.height * 0.3250000);
    path1.lineTo(size.width * 0.0735500, size.height * 0.3244000);
    path1.close();

    canvas.drawPath(path1, room[0]);

    Paint paint2 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path2 = Path();
    path2.moveTo(size.width * 0.0752250, size.height * 0.3559000);
    path2.lineTo(size.width * 0.0752375, size.height * 0.3946667);
    path2.lineTo(size.width * 0.1306750, size.height * 0.3954500);
    path2.lineTo(size.width * 0.1311500, size.height * 0.3562333);
    path2.lineTo(size.width * 0.0752250, size.height * 0.3559000);
    path2.close();

    canvas.drawPath(path2, room[1]);

    Paint paint3 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path3 = Path();
    path3.moveTo(size.width * 0.1319875, size.height * 0.3565167);
    path3.lineTo(size.width * 0.1498750, size.height * 0.3566667);
    path3.lineTo(size.width * 0.1498750, size.height * 0.3775000);
    path3.lineTo(size.width * 0.1317500, size.height * 0.3771667);
    path3.lineTo(size.width * 0.1319875, size.height * 0.3565167);
    path3.close();

    canvas.drawPath(path3, room[2]);

    Paint paint4 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path4 = Path();
    path4.moveTo(size.width * 0.0753750, size.height * 0.3966667);
    path4.lineTo(size.width * 0.1307625, size.height * 0.3971667);
    path4.lineTo(size.width * 0.1307500, size.height * 0.4459500);
    path4.lineTo(size.width * 0.0753875, size.height * 0.4453333);
    path4.lineTo(size.width * 0.0753750, size.height * 0.3966667);
    path4.close();

    canvas.drawPath(path4, room[3]);

    Paint paint5 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path5 = Path();
    path5.moveTo(size.width * 0.0753500, size.height * 0.4694000);
    path5.lineTo(size.width * 0.0754750, size.height * 0.5134833);
    path5.lineTo(size.width * 0.1500000, size.height * 0.5143333);
    path5.lineTo(size.width * 0.1498375, size.height * 0.4696000);
    path5.lineTo(size.width * 0.0753500, size.height * 0.4694000);
    path5.close();

    canvas.drawPath(path5, room[4]);

    Paint paint6 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path6 = Path();
    path6.moveTo(size.width * 0.1514000, size.height * 0.4433333);
    path6.lineTo(size.width * 0.2056000, size.height * 0.4438000);
    path6.lineTo(size.width * 0.2055875, size.height * 0.5151333);
    path6.lineTo(size.width * 0.1510750, size.height * 0.5145333);
    path6.lineTo(size.width * 0.1514000, size.height * 0.4433333);
    path6.close();

    canvas.drawPath(path6, room[5]);

    Paint paint7 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path7 = Path();
    path7.moveTo(size.width * 0.2073500, size.height * 0.4439333);
    path7.lineTo(size.width * 0.2072000, size.height * 0.5153333);
    path7.lineTo(size.width * 0.2447000, size.height * 0.5156000);
    path7.lineTo(size.width * 0.2451250, size.height * 0.4444000);
    path7.lineTo(size.width * 0.2073500, size.height * 0.4439333);
    path7.close();

    canvas.drawPath(path7, room[6]);

    Paint paint8 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path8 = Path();
    path8.moveTo(size.width * 0.2470500, size.height * 0.4448000);
    path8.lineTo(size.width * 0.2467500, size.height * 0.5158000);
    path8.lineTo(size.width * 0.2959625, size.height * 0.5164667);
    path8.lineTo(size.width * 0.2958000, size.height * 0.4450000);
    path8.lineTo(size.width * 0.2470500, size.height * 0.4448000);
    path8.close();

    canvas.drawPath(path8, room[7]);

    Paint paint9 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path9 = Path();
    path9.moveTo(size.width * 0.2975000, size.height * 0.4450167);
    path9.lineTo(size.width * 0.3458125, size.height * 0.4455667);
    path9.lineTo(size.width * 0.3459625, size.height * 0.5170333);
    path9.lineTo(size.width * 0.2975000, size.height * 0.5162833);
    path9.lineTo(size.width * 0.2975000, size.height * 0.4450167);
    path9.close();

    canvas.drawPath(path9, room[8]);

    Paint paint10 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path10 = Path();
    path10.moveTo(size.width * 0.3684750, size.height * 0.4446167);
    path10.lineTo(size.width * 0.3683375, size.height * 0.4659167);
    path10.lineTo(size.width * 0.4025000, size.height * 0.4659167);
    path10.lineTo(size.width * 0.4025000, size.height * 0.4448167);
    path10.lineTo(size.width * 0.3684750, size.height * 0.4446167);
    path10.close();

    canvas.drawPath(path10, room[9]);

    Paint paint11 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path11 = Path();
    path11.moveTo(size.width * 0.4034750, size.height * 0.4444500);
    path11.lineTo(size.width * 0.4032000, size.height * 0.5177667);
    path11.lineTo(size.width * 0.4780500, size.height * 0.5179667);
    path11.lineTo(size.width * 0.4777750, size.height * 0.4450000);
    path11.lineTo(size.width * 0.4034750, size.height * 0.4444500);
    path11.close();

    canvas.drawPath(path11, room[10]);

    Paint paint12 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path12 = Path();
    path12.moveTo(size.width * 0.4786125, size.height * 0.4451833);
    path12.lineTo(size.width * 0.4789000, size.height * 0.5183167);
    path12.lineTo(size.width * 0.5231875, size.height * 0.5181500);
    path12.lineTo(size.width * 0.5230500, size.height * 0.4453833);
    path12.lineTo(size.width * 0.4786125, size.height * 0.4451833);
    path12.close();

    canvas.drawPath(path12, room[11]);

    Paint paint13 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path13 = Path();
    path13.moveTo(size.width * 0.5237500, size.height * 0.4450000);
    path13.lineTo(size.width * 0.5666625, size.height * 0.4451833);
    path13.lineTo(size.width * 0.5662500, size.height * 0.5183333);
    path13.lineTo(size.width * 0.5237500, size.height * 0.5183333);
    path13.lineTo(size.width * 0.5237500, size.height * 0.4450000);
    path13.close();

    canvas.drawPath(path13, room[12]);

    Paint paint14 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path14 = Path();
    path14.moveTo(size.width * 0.5691750, size.height * 0.4589000);
    path14.lineTo(size.width * 0.6023500, size.height * 0.4587167);
    path14.lineTo(size.width * 0.6026375, size.height * 0.5183333);
    path14.lineTo(size.width * 0.5691750, size.height * 0.5185167);
    path14.lineTo(size.width * 0.5691750, size.height * 0.4589000);
    path14.close();

    canvas.drawPath(path14, room[13]);

    Paint paint15 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path15 = Path();
    path15.moveTo(size.width * 0.5875000, size.height * 0.4201833);
    path15.lineTo(size.width * 0.6373125, size.height * 0.4203000);
    path15.lineTo(size.width * 0.6372125, size.height * 0.4487000);
    path15.lineTo(size.width * 0.5875250, size.height * 0.4488833);
    path15.lineTo(size.width * 0.5875000, size.height * 0.4201833);
    path15.close();

    canvas.drawPath(path15, room[14]);

    Paint paint16 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path16 = Path();
    path16.moveTo(size.width * 0.5687500, size.height * 0.4183333);
    path16.lineTo(size.width * 0.5687500, size.height * 0.3616667);
    path16.lineTo(size.width * 0.6366250, size.height * 0.3619167);
    path16.lineTo(size.width * 0.6366250, size.height * 0.4183333);
    path16.lineTo(size.width * 0.5687500, size.height * 0.4183333);
    path16.close();

    canvas.drawPath(path16, room[15]);

    Paint paint17 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path17 = Path();
    path17.moveTo(size.width * 0.5123125, size.height * 0.3619167);
    path17.lineTo(size.width * 0.5662500, size.height * 0.3616667);
    path17.lineTo(size.width * 0.5668125, size.height * 0.4207500);
    path17.lineTo(size.width * 0.5119375, size.height * 0.4207500);
    path17.lineTo(size.width * 0.5123125, size.height * 0.3619167);
    path17.close();

    canvas.drawPath(path17, room[16]);

    Paint paint18 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path18 = Path();
    path18.moveTo(size.width * 0.6035625, size.height * 0.4500000);
    path18.lineTo(size.width * 0.6035625, size.height * 0.5181667);
    path18.lineTo(size.width * 0.6375000, size.height * 0.5183333);
    path18.lineTo(size.width * 0.6373500, size.height * 0.4500000);
    path18.lineTo(size.width * 0.6035625, size.height * 0.4500000);
    path18.close();

    canvas.drawPath(path18, room[17]);

    Paint paint19 = Paint()
      ..color = const Color.fromARGB(255, 33, 243, 50)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path19 = Path();
    path19.moveTo(size.width * 0.0753125, size.height * 0.4490000);
    path19.lineTo(size.width * 0.0753000, size.height * 0.4666667);
    path19.lineTo(size.width * 0.1082500, size.height * 0.4674000);
    path19.lineTo(size.width * 0.1083250, size.height * 0.4492667);
    path19.lineTo(size.width * 0.0753125, size.height * 0.4490000);
    path19.close();

    canvas.drawPath(path19, internalStairs);

    Paint paint20 = Paint()
      ..color = const Color.fromARGB(255, 38, 243, 33)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path20 = Path();
    path20.moveTo(size.width * 0.3675000, size.height * 0.4685833);
    path20.lineTo(size.width * 0.3675000, size.height * 0.5171667);
    path20.lineTo(size.width * 0.4014375, size.height * 0.5180833);
    path20.lineTo(size.width * 0.4012500, size.height * 0.4682333);
    path20.lineTo(size.width * 0.3675000, size.height * 0.4685833);
    path20.close();

    canvas.drawPath(path20, internalStairs);

    Paint paint21 = Paint()
      ..color = const Color.fromARGB(255, 243, 33, 33)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path21 = Path();
    path21.moveTo(size.width * 0.3437500, size.height * 0.3900000);
    path21.lineTo(size.width * 0.3625000, size.height * 0.3901667);
    path21.lineTo(size.width * 0.3627500, size.height * 0.4165000);
    path21.lineTo(size.width * 0.3437500, size.height * 0.4166667);
    path21.lineTo(size.width * 0.3437500, size.height * 0.3900000);
    path21.close();

    canvas.drawPath(path21, elevator);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

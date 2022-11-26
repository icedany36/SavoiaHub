import 'package:flutter/material.dart';

class SecondFloorPainter extends CustomPainter {
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
      ..color = Color.fromARGB(255, 122, 120, 109)
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
    path0.moveTo(size.width * 0.0716750, size.height * 0.2194667);
    path0.lineTo(size.width * 0.0725000, size.height * 0.5174000);
    path0.lineTo(size.width * 0.6402750, size.height * 0.5240667);
    path0.lineTo(size.width * 0.6400000, size.height * 0.3600000);
    path0.lineTo(size.width * 0.5094125, size.height * 0.3581833);
    path0.lineTo(size.width * 0.5097375, size.height * 0.4176167);
    path0.lineTo(size.width * 0.4850000, size.height * 0.4183333);
    path0.lineTo(size.width * 0.4850000, size.height * 0.3266667);
    path0.lineTo(size.width * 0.8012500, size.height * 0.3283333);
    path0.lineTo(size.width * 0.8012500, size.height * 0.1766667);
    path0.lineTo(size.width * 0.6262500, size.height * 0.1750000);
    path0.lineTo(size.width * 0.6262500, size.height * 0.2266667);
    path0.lineTo(size.width * 0.0716750, size.height * 0.2194667);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = Color.fromARGB(255, 122, 120, 109)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(size.width * 0.1525000, size.height * 0.3250000);
    path1.lineTo(size.width * 0.1525000, size.height * 0.4150000);
    path1.lineTo(size.width * 0.3428875, size.height * 0.4164500);
    path1.lineTo(size.width * 0.3534750, size.height * 0.4167167);
    path1.lineTo(size.width * 0.3553875, size.height * 0.4164833);
    path1.lineTo(size.width * 0.3632250, size.height * 0.4173000);
    path1.lineTo(size.width * 0.3987500, size.height * 0.4166667);
    path1.lineTo(size.width * 0.3989625, size.height * 0.3272000);
    path1.lineTo(size.width * 0.3437500, size.height * 0.3266667);
    path1.lineTo(size.width * 0.3080625, size.height * 0.3268167);
    path1.lineTo(size.width * 0.2947000, size.height * 0.3266333);
    path1.lineTo(size.width * 0.2714250, size.height * 0.3262000);
    path1.lineTo(size.width * 0.1525000, size.height * 0.3250000);
    path1.close();

    canvas.drawPath(path1, paint1);

    Paint rooms_3 = Paint()
      ..color = const Color.fromARGB(255, 0, 43, 54)
      ..style = PaintingStyle.fill;

    Path path13_3 = Path();
    path13_3.moveTo(size.width * 0.1525000, size.height * 0.3247833);
    path13_3.lineTo(size.width * 0.1527750, size.height * 0.4148500);
    path13_3.lineTo(size.width * 0.2720000, size.height * 0.4161000);
    path13_3.lineTo(size.width * 0.2719000, size.height * 0.3260167);
    path13_3.lineTo(size.width * 0.1525000, size.height * 0.3247833);
    path13_3.close();

    canvas.drawPath(path13_3, rooms_3);

    Path path2 = Path();
    path2.moveTo(size.width * 0.0761625, size.height * 0.2244167);
    path2.lineTo(size.width * 0.0756375, size.height * 0.3203167);
    path2.lineTo(size.width * 0.1209875, size.height * 0.3211167);
    path2.lineTo(size.width * 0.1211500, size.height * 0.2251500);
    path2.lineTo(size.width * 0.0761625, size.height * 0.2244167);
    path2.close();

    canvas.drawPath(path2, room[0]);

    Paint paint3 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path3 = Path();
    path3.moveTo(size.width * 0.1237375, size.height * 0.2263167);
    path3.lineTo(size.width * 0.1232375, size.height * 0.2850667);
    path3.lineTo(size.width * 0.1451875, size.height * 0.2853500);
    path3.lineTo(size.width * 0.1451750, size.height * 0.2572333);
    path3.lineTo(size.width * 0.1562500, size.height * 0.2574167);
    path3.lineTo(size.width * 0.1562375, size.height * 0.2273667);
    path3.lineTo(size.width * 0.1237375, size.height * 0.2263167);
    path3.close();

    canvas.drawPath(path3, room[1]);

    Paint paint4 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path4 = Path();
    path4.moveTo(size.width * 0.1584625, size.height * 0.2273000);
    path4.lineTo(size.width * 0.1588000, size.height * 0.2546833);
    path4.lineTo(size.width * 0.1921750, size.height * 0.2551500);
    path4.lineTo(size.width * 0.1925250, size.height * 0.2278333);
    path4.lineTo(size.width * 0.1584625, size.height * 0.2273000);
    path4.close();

    canvas.drawPath(path4, room[2]);

    Paint paint5 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path5 = Path();
    path5.moveTo(size.width * 0.1950625, size.height * 0.2272000);
    path5.lineTo(size.width * 0.1948750, size.height * 0.2855000);
    path5.lineTo(size.width * 0.2287750, size.height * 0.2859333);
    path5.lineTo(size.width * 0.2290750, size.height * 0.2274500);
    path5.lineTo(size.width * 0.1950625, size.height * 0.2272000);
    path5.close();

    canvas.drawPath(path5, room[3]);

    Paint paint6 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path6 = Path();
    path6.moveTo(size.width * 0.2312125, size.height * 0.2256500);
    path6.lineTo(size.width * 0.2756875, size.height * 0.2261000);
    path6.lineTo(size.width * 0.2754375, size.height * 0.2646333);
    path6.lineTo(size.width * 0.2310875, size.height * 0.2641333);
    path6.lineTo(size.width * 0.2312125, size.height * 0.2256500);
    path6.close();

    canvas.drawPath(path6, room[4]);

    Paint paint7 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path7 = Path();
    path7.moveTo(size.width * 0.2786625, size.height * 0.2252167);
    path7.lineTo(size.width * 0.2785000, size.height * 0.2970833);
    path7.lineTo(size.width * 0.3190125, size.height * 0.2971333);
    path7.lineTo(size.width * 0.3193750, size.height * 0.2262000);
    path7.lineTo(size.width * 0.2786625, size.height * 0.2252167);
    path7.close();

    canvas.drawPath(path7, room[5]);

    Paint paint8 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path8 = Path();
    path8.moveTo(size.width * 0.3212125, size.height * 0.2269333);
    path8.lineTo(size.width * 0.3603125, size.height * 0.2269333);
    path8.lineTo(size.width * 0.3599375, size.height * 0.2980500);
    path8.lineTo(size.width * 0.3208750, size.height * 0.2974000);
    path8.lineTo(size.width * 0.3212125, size.height * 0.2269333);
    path8.close();

    canvas.drawPath(path8, room[6]);

    Paint paint9 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path9 = Path();
    path9.moveTo(size.width * 0.3621000, size.height * 0.2273333);
    path9.lineTo(size.width * 0.3982500, size.height * 0.2280500);
    path9.lineTo(size.width * 0.3980750, size.height * 0.2982833);
    path9.lineTo(size.width * 0.3614875, size.height * 0.2982333);
    path9.lineTo(size.width * 0.3621000, size.height * 0.2273333);
    path9.close();

    canvas.drawPath(path9, room[7]);

    Paint paint10 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path10 = Path();
    path10.moveTo(size.width * 0.4026500, size.height * 0.2296667);
    path10.lineTo(size.width * 0.4023125, size.height * 0.2974833);
    path10.lineTo(size.width * 0.4405000, size.height * 0.2980000);
    path10.lineTo(size.width * 0.4406875, size.height * 0.2304000);
    path10.lineTo(size.width * 0.4026500, size.height * 0.2296667);
    path10.close();

    canvas.drawPath(path10, room[8]);

    Paint paint11 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path11 = Path();
    path11.moveTo(size.width * 0.4420750, size.height * 0.2295833);
    path11.lineTo(size.width * 0.4416000, size.height * 0.2971167);
    path11.lineTo(size.width * 0.4797625, size.height * 0.2979000);
    path11.lineTo(size.width * 0.4799500, size.height * 0.2301167);
    path11.lineTo(size.width * 0.4420750, size.height * 0.2295833);
    path11.close();

    canvas.drawPath(path11, room[9]);

    Paint paint12 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path12 = Path();
    path12.moveTo(size.width * 0.5258250, size.height * 0.2288500);
    path12.lineTo(size.width * 0.5252750, size.height * 0.2995333);
    path12.lineTo(size.width * 0.5663250, size.height * 0.3002167);
    path12.lineTo(size.width * 0.5662125, size.height * 0.2297333);
    path12.lineTo(size.width * 0.5258250, size.height * 0.2288500);
    path12.close();

    canvas.drawPath(path12, room[10]);

    Paint paint13 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path13 = Path();
    path13.moveTo(size.width * 0.5241125, size.height * 0.2290833);
    path13.lineTo(size.width * 0.5239250, size.height * 0.3000000);
    path13.lineTo(size.width * 0.4850375, size.height * 0.2990833);
    path13.lineTo(size.width * 0.4850375, size.height * 0.2288667);
    path13.lineTo(size.width * 0.5241125, size.height * 0.2290833);
    path13.close();

    canvas.drawPath(path13, room[11]);

    Paint paint14 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path14 = Path();
    path14.moveTo(size.width * 0.5681000, size.height * 0.2291167);
    path14.lineTo(size.width * 0.5679750, size.height * 0.2997833);
    path14.lineTo(size.width * 0.5996000, size.height * 0.2997833);
    path14.lineTo(size.width * 0.5994750, size.height * 0.2289500);
    path14.lineTo(size.width * 0.5681000, size.height * 0.2291167);
    path14.close();

    canvas.drawPath(path14, room[12]);

    Paint paint15 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path15 = Path();
    path15.moveTo(size.width * 0.6006500, size.height * 0.2298000);
    path15.lineTo(size.width * 0.6225250, size.height * 0.2299667);
    path15.lineTo(size.width * 0.6224000, size.height * 0.2596333);
    path15.lineTo(size.width * 0.6006500, size.height * 0.2596333);
    path15.lineTo(size.width * 0.6006500, size.height * 0.2298000);
    path15.close();

    canvas.drawPath(path15, room[13]);

    Paint paint16 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path16 = Path();
    path16.moveTo(size.width * 0.6640125, size.height * 0.1802167);
    path16.lineTo(size.width * 0.7986875, size.height * 0.1818833);
    path16.lineTo(size.width * 0.7976375, size.height * 0.3250500);
    path16.lineTo(size.width * 0.6621750, size.height * 0.3236333);
    path16.lineTo(size.width * 0.6640125, size.height * 0.1802167);
    path16.close();

    canvas.drawPath(path16, room[14]);

    Paint paint17 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path17 = Path();
    path17.moveTo(size.width * 0.6270750, size.height * 0.2816000);
    path17.lineTo(size.width * 0.6265500, size.height * 0.3234833);
    path17.lineTo(size.width * 0.6615500, size.height * 0.3244333);
    path17.lineTo(size.width * 0.6618875, size.height * 0.2817667);
    path17.lineTo(size.width * 0.6270750, size.height * 0.2816000);
    path17.close();

    canvas.drawPath(path17, room[15]);

    Paint paint18 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path18 = Path();
    path18.moveTo(size.width * 0.5707000, size.height * 0.3616667);
    path18.lineTo(size.width * 0.5707125, size.height * 0.4174333);
    path18.lineTo(size.width * 0.6380625, size.height * 0.4183667);
    path18.lineTo(size.width * 0.6380500, size.height * 0.3620833);
    path18.lineTo(size.width * 0.5707000, size.height * 0.3616667);
    path18.close();

    canvas.drawPath(path18, room[16]);

    Paint paint19 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path19 = Path();
    path19.moveTo(size.width * 0.5120000, size.height * 0.3624333);
    path19.quadraticBezierTo(size.width * 0.5530125, size.height * 0.3627167,
        size.width * 0.5666875, size.height * 0.3628167);
    path19.quadraticBezierTo(size.width * 0.5666000, size.height * 0.3773000,
        size.width * 0.5663125, size.height * 0.4207500);
    path19.lineTo(size.width * 0.5123750, size.height * 0.4202500);
    path19.lineTo(size.width * 0.5120000, size.height * 0.3624333);
    path19.close();

    canvas.drawPath(path19, room[17]);

    Paint paint20 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path20 = Path();
    path20.moveTo(size.width * 0.5703625, size.height * 0.4223333);
    path20.lineTo(size.width * 0.6371500, size.height * 0.4233167);
    path20.lineTo(size.width * 0.6372875, size.height * 0.5186333);
    path20.lineTo(size.width * 0.5698375, size.height * 0.5180333);
    path20.lineTo(size.width * 0.5703625, size.height * 0.4223333);
    path20.close();

    canvas.drawPath(path20, room[18]);

    Paint paint21 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path21 = Path();
    path21.moveTo(size.width * 0.5184125, size.height * 0.4474500);
    path21.lineTo(size.width * 0.5182375, size.height * 0.5176333);
    path21.lineTo(size.width * 0.5675125, size.height * 0.5183500);
    path21.lineTo(size.width * 0.5676750, size.height * 0.4483833);
    path21.lineTo(size.width * 0.5184125, size.height * 0.4474500);
    path21.close();

    canvas.drawPath(path21, room[19]);

    Paint paint22 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path22 = Path();
    path22.moveTo(size.width * 0.4550125, size.height * 0.4459667);
    path22.lineTo(size.width * 0.4548125, size.height * 0.5163833);
    path22.lineTo(size.width * 0.5155250, size.height * 0.5173500);
    path22.lineTo(size.width * 0.5155125, size.height * 0.4469333);
    path22.lineTo(size.width * 0.4550125, size.height * 0.4459667);
    path22.close();

    canvas.drawPath(path22, room[20]);

    Paint paint23 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path23 = Path();
    path23.moveTo(size.width * 0.4034625, size.height * 0.4466833);
    path23.lineTo(size.width * 0.4033125, size.height * 0.5168333);
    path23.lineTo(size.width * 0.4535875, size.height * 0.5171000);
    path23.lineTo(size.width * 0.4531000, size.height * 0.4471000);
    path23.lineTo(size.width * 0.4034625, size.height * 0.4466833);
    path23.close();

    canvas.drawPath(path23, room[21]);

    Paint paint24 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path24 = Path();
    path24.moveTo(size.width * 0.2969750, size.height * 0.4719333);
    path24.lineTo(size.width * 0.2970250, size.height * 0.5157333);
    path24.lineTo(size.width * 0.3458750, size.height * 0.5164333);
    path24.lineTo(size.width * 0.3460375, size.height * 0.4724667);
    path24.lineTo(size.width * 0.2969750, size.height * 0.4719333);
    path24.close();

    canvas.drawPath(path24, room[22]);

    Paint paint25 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path25 = Path();
    path25.moveTo(size.width * 0.2475375, size.height * 0.4719833);
    path25.lineTo(size.width * 0.2945000, size.height * 0.4731833);
    path25.lineTo(size.width * 0.2943250, size.height * 0.5152833);
    path25.lineTo(size.width * 0.2473500, size.height * 0.5150167);
    path25.lineTo(size.width * 0.2475375, size.height * 0.4719833);
    path25.close();

    canvas.drawPath(path25, room[23]);

    Paint paint26 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path26 = Path();
    path26.moveTo(size.width * 0.2073375, size.height * 0.4717500);
    path26.lineTo(size.width * 0.2451750, size.height * 0.4722500);
    path26.lineTo(size.width * 0.2449625, size.height * 0.5148500);
    path26.lineTo(size.width * 0.2071500, size.height * 0.5141500);
    path26.lineTo(size.width * 0.2073375, size.height * 0.4717500);
    path26.close();

    canvas.drawPath(path26, room[24]);

    Paint paint27 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path27 = Path();
    path27.moveTo(size.width * 0.2971875, size.height * 0.4205333);
    path27.lineTo(size.width * 0.2971750, size.height * 0.4512500);
    path27.lineTo(size.width * 0.3462875, size.height * 0.4520000);
    path27.lineTo(size.width * 0.3462750, size.height * 0.4214667);
    path27.lineTo(size.width * 0.2971875, size.height * 0.4205333);
    path27.close();

    canvas.drawPath(path27, room[25]);

    Paint paint28 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path28 = Path();
    path28.moveTo(size.width * 0.2512500, size.height * 0.4201000);
    path28.lineTo(size.width * 0.2512500, size.height * 0.4493167);
    path28.lineTo(size.width * 0.2955250, size.height * 0.4498167);
    path28.lineTo(size.width * 0.2955125, size.height * 0.4208000);
    path28.lineTo(size.width * 0.2512500, size.height * 0.4201000);
    path28.close();

    canvas.drawPath(path28, room[26]);

    Paint paint29 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path29 = Path();
    path29.moveTo(size.width * 0.1816250, size.height * 0.4717500);
    path29.lineTo(size.width * 0.2054875, size.height * 0.4718000);
    path29.lineTo(size.width * 0.2054875, size.height * 0.5149000);
    path29.lineTo(size.width * 0.1815875, size.height * 0.5143833);
    path29.lineTo(size.width * 0.1816250, size.height * 0.4717500);
    path29.close();

    canvas.drawPath(path29, room[27]);

    Paint paint30 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path30 = Path();
    path30.moveTo(size.width * 0.1331125, size.height * 0.4713500);
    path30.lineTo(size.width * 0.1796500, size.height * 0.4722167);
    path30.lineTo(size.width * 0.1795000, size.height * 0.5145167);
    path30.lineTo(size.width * 0.1330000, size.height * 0.5136333);
    path30.lineTo(size.width * 0.1331125, size.height * 0.4713500);
    path30.close();

    canvas.drawPath(path30, room[28]);

    Paint paint31 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path31 = Path();
    path31.moveTo(size.width * 0.0765500, size.height * 0.4709167);
    path31.lineTo(size.width * 0.0764250, size.height * 0.5130833);
    path31.lineTo(size.width * 0.1306750, size.height * 0.5137667);
    path31.lineTo(size.width * 0.1308000, size.height * 0.4717833);
    path31.lineTo(size.width * 0.0765500, size.height * 0.4709167);
    path31.close();

    canvas.drawPath(path31, room[29]);

    Paint paint32 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path32 = Path();
    path32.moveTo(size.width * 0.0766000, size.height * 0.4007667);
    path32.lineTo(size.width * 0.0767250, size.height * 0.4453167);
    path32.lineTo(size.width * 0.1299625, size.height * 0.4461000);
    path32.lineTo(size.width * 0.1300875, size.height * 0.4014500);
    path32.lineTo(size.width * 0.0766000, size.height * 0.4007667);
    path32.close();

    canvas.drawPath(path32, room[30]);

    Paint paint33 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path33 = Path();
    path33.moveTo(size.width * 0.0760000, size.height * 0.3587500);
    path33.lineTo(size.width * 0.1296000, size.height * 0.3596500);
    path33.lineTo(size.width * 0.1295375, size.height * 0.3999500);
    path33.lineTo(size.width * 0.0760000, size.height * 0.3992833);
    path33.lineTo(size.width * 0.0760000, size.height * 0.3587500);
    path33.close();

    canvas.drawPath(path33, room[31]);

    Paint paint34 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path34 = Path();
    path34.moveTo(size.width * 0.0760625, size.height * 0.3238000);
    path34.lineTo(size.width * 0.0760625, size.height * 0.3575167);
    path34.lineTo(size.width * 0.1294250, size.height * 0.3581333);
    path34.lineTo(size.width * 0.1296000, size.height * 0.3242833);
    path34.lineTo(size.width * 0.0760625, size.height * 0.3238000);
    path34.close();

    canvas.drawPath(path34, room[32]);

    Paint paint35 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path35 = Path();
    path35.moveTo(size.width * 0.1521375, size.height * 0.4181333);
    path35.lineTo(size.width * 0.1523250, size.height * 0.4475000);
    path35.lineTo(size.width * 0.2110625, size.height * 0.4484167);
    path35.lineTo(size.width * 0.2110250, size.height * 0.4192667);
    path35.lineTo(size.width * 0.1521375, size.height * 0.4181333);
    path35.close();

    canvas.drawPath(path35, room[33]);

    Paint paint36 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path36 = Path();
    path36.moveTo(size.width * 0.2129250, size.height * 0.4195333);
    path36.lineTo(size.width * 0.2129250, size.height * 0.4345333);
    path36.lineTo(size.width * 0.2336750, size.height * 0.4347833);
    path36.lineTo(size.width * 0.2338625, size.height * 0.4195333);
    path36.lineTo(size.width * 0.2129250, size.height * 0.4195333);
    path36.close();

    canvas.drawPath(path36, room[34]);

    Paint paint37 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path37 = Path();
    path37.moveTo(size.width * 0.2358500, size.height * 0.4195000);
    path37.lineTo(size.width * 0.2354625, size.height * 0.4488167);
    path37.lineTo(size.width * 0.2492125, size.height * 0.4487167);
    path37.lineTo(size.width * 0.2493750, size.height * 0.4197500);
    path37.lineTo(size.width * 0.2358500, size.height * 0.4195000);
    path37.close();

    canvas.drawPath(path37, room[35]);

    Paint paint38 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path38 = Path();
    path38.moveTo(size.width * 0.2735000, size.height * 0.3260000);
    path38.lineTo(size.width * 0.2735125, size.height * 0.3776333);
    path38.lineTo(size.width * 0.3417125, size.height * 0.3789833);
    path38.lineTo(size.width * 0.3417125, size.height * 0.3270000);
    path38.lineTo(size.width * 0.2735000, size.height * 0.3260000);
    path38.close();

    canvas.drawPath(path38, room[36]);

    Paint paint39 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path39 = Path();
    path39.moveTo(size.width * 0.4027125, size.height * 0.3532833);
    path39.lineTo(size.width * 0.4027000, size.height * 0.4162000);
    path39.lineTo(size.width * 0.4336000, size.height * 0.4165167);
    path39.lineTo(size.width * 0.4336625, size.height * 0.3539833);
    path39.lineTo(size.width * 0.4027125, size.height * 0.3532833);
    path39.close();

    canvas.drawPath(path39, room[37]);

    Paint paint40 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path40 = Path();
    path40.moveTo(size.width * 0.4500500, size.height * 0.3549667);
    path40.lineTo(size.width * 0.4498125, size.height * 0.3871833);
    path40.lineTo(size.width * 0.4805250, size.height * 0.3875167);
    path40.lineTo(size.width * 0.4805250, size.height * 0.3545667);
    path40.lineTo(size.width * 0.4500500, size.height * 0.3549667);
    path40.close();

    canvas.drawPath(path40, room[38]);

    Paint paint41 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path41 = Path();
    path41.moveTo(size.width * 0.4500000, size.height * 0.3881667);
    path41.lineTo(size.width * 0.4500000, size.height * 0.4174500);
    path41.lineTo(size.width * 0.4802375, size.height * 0.4174500);
    path41.lineTo(size.width * 0.4801875, size.height * 0.3884833);
    path41.lineTo(size.width * 0.4500000, size.height * 0.3881667);
    path41.close();

    canvas.drawPath(path41, room[39]);

    Paint paint42 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path42 = Path();
    path42.moveTo(size.width * 0.4028000, size.height * 0.3517833);
    path42.lineTo(size.width * 0.4027000, size.height * 0.3139667);
    path42.lineTo(size.width * 0.4199500, size.height * 0.3139833);
    path42.lineTo(size.width * 0.4200750, size.height * 0.3216333);
    path42.lineTo(size.width * 0.4327000, size.height * 0.3214667);
    path42.lineTo(size.width * 0.4328250, size.height * 0.3526333);
    path42.lineTo(size.width * 0.4028000, size.height * 0.3517833);
    path42.close();

    canvas.drawPath(path42, room[40]);

    Paint paint43 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path43 = Path();
    path43.moveTo(size.width * 0.3779750, size.height * 0.4450000);
    path43.lineTo(size.width * 0.3779750, size.height * 0.4658667);
    path43.lineTo(size.width * 0.4010750, size.height * 0.4660833);
    path43.lineTo(size.width * 0.4012375, size.height * 0.4452167);
    path43.lineTo(size.width * 0.3779750, size.height * 0.4450000);
    path43.close();

    canvas.drawPath(path43, room[41]);

    Paint paint44 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path44 = Path();
    path44.moveTo(size.width * 0.4503625, size.height * 0.3531833);
    path44.lineTo(size.width * 0.4817875, size.height * 0.3532500);
    path44.lineTo(size.width * 0.4817500, size.height * 0.3155167);
    path44.lineTo(size.width * 0.4651625, size.height * 0.3155333);
    path44.lineTo(size.width * 0.4652125, size.height * 0.3224000);
    path44.lineTo(size.width * 0.4505125, size.height * 0.3221833);
    path44.lineTo(size.width * 0.4503625, size.height * 0.3531833);
    path44.close();

    canvas.drawPath(path44, room[42]);

    Paint paint45 = Paint()
      ..color = const Color.fromARGB(255, 33, 243, 66)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path45 = Path();
    path45.moveTo(size.width * 0.1089625, size.height * 0.4499833);
    path45.lineTo(size.width * 0.0762625, size.height * 0.4493000);
    path45.lineTo(size.width * 0.0762875, size.height * 0.4678500);
    path45.lineTo(size.width * 0.1089625, size.height * 0.4683333);
    path45.lineTo(size.width * 0.1089625, size.height * 0.4499833);
    path45.close();

    canvas.drawPath(path45, internalStairs);

    Paint paint46 = Paint()
      ..color = const Color.fromARGB(255, 33, 243, 34)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path46 = Path();
    path46.moveTo(size.width * 0.3673125, size.height * 0.4692500);
    path46.lineTo(size.width * 0.3671750, size.height * 0.5164333);
    path46.lineTo(size.width * 0.4011000, size.height * 0.5169833);
    path46.lineTo(size.width * 0.4011125, size.height * 0.4695000);
    path46.lineTo(size.width * 0.3673125, size.height * 0.4692500);
    path46.close();

    canvas.drawPath(path46, internalStairs);

    Paint paint47 = Paint()
      ..color = const Color.fromARGB(255, 33, 243, 39)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path47 = Path();
    path47.moveTo(size.width * 0.2409750, size.height * 0.2674000);
    path47.lineTo(size.width * 0.2411250, size.height * 0.2857833);
    path47.lineTo(size.width * 0.2751500, size.height * 0.2860833);
    path47.lineTo(size.width * 0.2754250, size.height * 0.2680167);
    path47.lineTo(size.width * 0.2409750, size.height * 0.2674000);
    path47.close();

    canvas.drawPath(path47, internalStairs);

    Paint paint48 = Paint()
      ..color = const Color.fromARGB(255, 33, 243, 45)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path48 = Path();
    path48.moveTo(size.width * 0.1581625, size.height * 0.2689667);
    path48.lineTo(size.width * 0.1581625, size.height * 0.2989667);
    path48.lineTo(size.width * 0.1917500, size.height * 0.2994000);
    path48.lineTo(size.width * 0.1919125, size.height * 0.2689667);
    path48.lineTo(size.width * 0.1581625, size.height * 0.2689667);
    path48.close();

    canvas.drawPath(path48, internalStairs);

    Paint paint49 = Paint()
      ..color = const Color.fromARGB(255, 33, 243, 56)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path49 = Path();
    path49.moveTo(size.width * 0.6291250, size.height * 0.2245000);
    path49.lineTo(size.width * 0.6610125, size.height * 0.2247833);
    path49.lineTo(size.width * 0.6614125, size.height * 0.1795000);
    path49.lineTo(size.width * 0.6291250, size.height * 0.1794667);
    path49.lineTo(size.width * 0.6291250, size.height * 0.2245000);
    path49.close();

    canvas.drawPath(path49, internalStairs);

    Paint paint50 = Paint()
      ..color = const Color.fromARGB(255, 243, 33, 36)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path50 = Path();
    path50.moveTo(size.width * 0.3436750, size.height * 0.3899833);
    path50.lineTo(size.width * 0.3434750, size.height * 0.4169167);
    path50.lineTo(size.width * 0.3626250, size.height * 0.4169167);
    path50.lineTo(size.width * 0.3626250, size.height * 0.3897167);
    path50.lineTo(size.width * 0.3436750, size.height * 0.3899833);
    path50.close();

    canvas.drawPath(path50, elevator);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

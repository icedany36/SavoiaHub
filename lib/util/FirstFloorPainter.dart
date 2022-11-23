import 'package:flutter/material.dart';

class FirstFloorPainter extends CustomPainter {
  static var room = [];

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < 100; i++) {
      room.add(Paint()
        ..color = Color.fromARGB(255, 181, 137, 0)
        ..style = PaintingStyle.fill);
    }
    Paint FFBase = Paint()
      ..color = Color.fromARGB(255, 228, 218, 184)
      ..style = PaintingStyle.fill;

    Paint elevator = Paint()
      ..color = Color.fromARGB(255, 34, 116, 109)
      ..style = PaintingStyle.fill;

    Paint internalStairs = Paint()
      ..color = Color.fromARGB(255, 133, 153, 0)
      ..style = PaintingStyle.fill;

    Paint bar = Paint()
      ..color = Color.fromARGB(255, 38, 139, 210)
      ..style = PaintingStyle.fill;

    Paint exit = Paint()
      ..color = Color.fromARGB(255, 211, 1, 2)
      ..style = PaintingStyle.fill;

    Path path13 = Path();
    path13.moveTo(size.width * 0.0725000, size.height * 0.2200000);
    path13.lineTo(size.width * 0.0725000, size.height * 0.5183333);
    path13.lineTo(size.width * 0.6412500, size.height * 0.5233333);
    path13.lineTo(size.width * 0.6400000, size.height * 0.3600000);
    path13.lineTo(size.width * 0.5112500, size.height * 0.3583333);
    path13.lineTo(size.width * 0.5100000, size.height * 0.4183333);
    path13.lineTo(size.width * 0.4850000, size.height * 0.4183333);
    path13.lineTo(size.width * 0.4850000, size.height * 0.3266667);
    path13.lineTo(size.width * 0.8025000, size.height * 0.3283333);
    path13.lineTo(size.width * 0.8025000, size.height * 0.1783333);
    path13.lineTo(size.width * 0.5687500, size.height * 0.1750000);
    path13.lineTo(size.width * 0.5687500, size.height * 0.2250000);
    path13.lineTo(size.width * 0.0725000, size.height * 0.2200000);
    path13.close();

    canvas.drawPath(path13, FFBase);

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

    Paint rooms = Paint()
      ..color = Color.fromARGB(255, 181, 137, 0)
      ..style = PaintingStyle.fill;

    Path path13_2 = Path();
    path13_2.moveTo(size.width * 0.0758250, size.height * 0.3246833);
    path13_2.lineTo(size.width * 0.0759750, size.height * 0.3541833);
    path13_2.lineTo(size.width * 0.1026375, size.height * 0.3543000);
    path13_2.lineTo(size.width * 0.1026000, size.height * 0.3625167);
    path13_2.lineTo(size.width * 0.1298625, size.height * 0.3623167);
    path13_2.lineTo(size.width * 0.1296500, size.height * 0.3249500);
    path13_2.lineTo(size.width * 0.0758250, size.height * 0.3246833);
    path13_2.close();

    canvas.drawPath(path13_2, room[0]);

    Path path14 = Path();
    path14.moveTo(size.width * 0.0764625, size.height * 0.3560333);
    path14.lineTo(size.width * 0.0764625, size.height * 0.3956000);
    path14.lineTo(size.width * 0.1297875, size.height * 0.3957167);
    path14.lineTo(size.width * 0.1299125, size.height * 0.3642667);
    path14.lineTo(size.width * 0.1009875, size.height * 0.3645000);
    path14.lineTo(size.width * 0.1009125, size.height * 0.3561833);
    path14.lineTo(size.width * 0.0764625, size.height * 0.3560333);
    path14.close();

    canvas.drawPath(path14, room[1]);

    Path path15 = Path();
    path15.moveTo(size.width * 0.0765375, size.height * 0.3968000);
    path15.lineTo(size.width * 0.0765250, size.height * 0.4457333);
    path15.lineTo(size.width * 0.1303125, size.height * 0.4461167);
    path15.lineTo(size.width * 0.1301625, size.height * 0.3969500);
    path15.lineTo(size.width * 0.0765375, size.height * 0.3968000);
    path15.close();

    canvas.drawPath(path15, room[2]);

    Path path16 = Path();
    path16.moveTo(size.width * 0.1541250, size.height * 0.4716667);
    path16.lineTo(size.width * 0.1541250, size.height * 0.4875000);
    path16.lineTo(size.width * 0.1498750, size.height * 0.4873333);
    path16.lineTo(size.width * 0.1497500, size.height * 0.5138333);
    path16.lineTo(size.width * 0.1797375, size.height * 0.5138500);
    path16.lineTo(size.width * 0.1797250, size.height * 0.4720167);
    path16.lineTo(size.width * 0.1541250, size.height * 0.4716667);
    path16.close();

    canvas.drawPath(path16, room[3]);

    Path path17 = Path();
    path17.moveTo(size.width * 0.1819000, size.height * 0.4720333);
    path17.lineTo(size.width * 0.1820000, size.height * 0.5140000);
    path17.lineTo(size.width * 0.2058000, size.height * 0.5146000);
    path17.lineTo(size.width * 0.2057500, size.height * 0.4724667);
    path17.lineTo(size.width * 0.1819000, size.height * 0.4720333);
    path17.close();

    canvas.drawPath(path17, room[4]);

    Path path18 = Path();
    path18.moveTo(size.width * 0.2083000, size.height * 0.4725333);
    path18.lineTo(size.width * 0.2081500, size.height * 0.5148000);
    path18.lineTo(size.width * 0.2456000, size.height * 0.5152000);
    path18.lineTo(size.width * 0.2453000, size.height * 0.4727333);
    path18.lineTo(size.width * 0.2083000, size.height * 0.4725333);
    path18.close();

    canvas.drawPath(path18, room[5]);

    Path path19 = Path();
    path19.moveTo(size.width * 0.2476500, size.height * 0.4729333);
    path19.lineTo(size.width * 0.2478000, size.height * 0.5152000);
    path19.lineTo(size.width * 0.2949500, size.height * 0.5156000);
    path19.lineTo(size.width * 0.2947875, size.height * 0.4732000);
    path19.lineTo(size.width * 0.2476500, size.height * 0.4729333);
    path19.close();

    canvas.drawPath(path19, room[6]);

    Path path20 = Path();
    path20.moveTo(size.width * 0.1529500, size.height * 0.4196000);
    path20.lineTo(size.width * 0.1534000, size.height * 0.4468500);
    path20.lineTo(size.width * 0.1928000, size.height * 0.4472667);
    path20.lineTo(size.width * 0.1928000, size.height * 0.4200000);
    path20.lineTo(size.width * 0.1529500, size.height * 0.4196000);
    path20.close();

    canvas.drawPath(path20, room[7]);

    Path path21 = Path();
    path21.moveTo(size.width * 0.2037500, size.height * 0.4200000);
    path21.lineTo(size.width * 0.2040125, size.height * 0.4472500);
    path21.lineTo(size.width * 0.1941500, size.height * 0.4473833);
    path21.lineTo(size.width * 0.1944500, size.height * 0.4200000);
    path21.lineTo(size.width * 0.2037500, size.height * 0.4200000);
    path21.close();

    canvas.drawPath(path21, room[8]);

    Path path22 = Path();
    path22.moveTo(size.width * 0.2054375, size.height * 0.4198167);
    path22.lineTo(size.width * 0.2055625, size.height * 0.4475833);
    path22.lineTo(size.width * 0.2488750, size.height * 0.4481000);
    path22.lineTo(size.width * 0.2488875, size.height * 0.4203500);
    path22.lineTo(size.width * 0.2054375, size.height * 0.4198167);
    path22.close();

    canvas.drawPath(path22, room[9]);

    Path path23 = Path();
    path23.moveTo(size.width * 0.2505500, size.height * 0.4201833);
    path23.lineTo(size.width * 0.2505375, size.height * 0.4481667);
    path23.lineTo(size.width * 0.2951375, size.height * 0.4488833);
    path23.lineTo(size.width * 0.2950000, size.height * 0.4207500);
    path23.lineTo(size.width * 0.2505500, size.height * 0.4201833);
    path23.close();

    canvas.drawPath(path23, room[10]);

    Path path24 = Path();
    path24.moveTo(size.width * 0.2737500, size.height * 0.3257333);
    path24.lineTo(size.width * 0.2740500, size.height * 0.4164833);
    path24.lineTo(size.width * 0.3419250, size.height * 0.4170500);
    path24.lineTo(size.width * 0.3420375, size.height * 0.3269167);
    path24.lineTo(size.width * 0.2737500, size.height * 0.3257333);
    path24.close();

    canvas.drawPath(path24, room[11]);

    Path path25 = Path();
    path25.moveTo(size.width * 0.3486000, size.height * 0.4464833);
    path25.lineTo(size.width * 0.3486000, size.height * 0.4651833);
    path25.lineTo(size.width * 0.4022125, size.height * 0.4655667);
    path25.lineTo(size.width * 0.4018000, size.height * 0.4466667);
    path25.lineTo(size.width * 0.3486000, size.height * 0.4464833);
    path25.close();

    canvas.drawPath(path25, room[12]);

    Path path26 = Path();
    path26.moveTo(size.width * 0.4243250, size.height * 0.4477000);
    path26.lineTo(size.width * 0.4242125, size.height * 0.5164333);
    path26.lineTo(size.width * 0.5162500, size.height * 0.5175833);
    path26.lineTo(size.width * 0.5155000, size.height * 0.4483500);
    path26.lineTo(size.width * 0.4243250, size.height * 0.4477000);
    path26.close();

    canvas.drawPath(path26, room[13]);

    Path path27 = Path();
    path27.moveTo(size.width * 0.5183875, size.height * 0.4482833);
    path27.lineTo(size.width * 0.5183625, size.height * 0.5178000);
    path27.lineTo(size.width * 0.5664750, size.height * 0.5182500);
    path27.lineTo(size.width * 0.5662500, size.height * 0.4483333);
    path27.lineTo(size.width * 0.5183875, size.height * 0.4482833);
    path27.close();

    canvas.drawPath(path27, room[14]);

    Path path28 = Path();
    path28.moveTo(size.width * 0.5702000, size.height * 0.4403333);
    path28.lineTo(size.width * 0.5700000, size.height * 0.5183333);
    path28.lineTo(size.width * 0.6043375, size.height * 0.5183500);
    path28.lineTo(size.width * 0.6039500, size.height * 0.4403500);
    path28.lineTo(size.width * 0.5702000, size.height * 0.4403333);
    path28.close();

    canvas.drawPath(path28, room[15]);

    Path path29 = Path();
    path29.moveTo(size.width * 0.6055625, size.height * 0.4228000);
    path29.lineTo(size.width * 0.6056500, size.height * 0.5183333);
    path29.lineTo(size.width * 0.6370500, size.height * 0.5187833);
    path29.lineTo(size.width * 0.6370500, size.height * 0.4230667);
    path29.lineTo(size.width * 0.6055625, size.height * 0.4228000);
    path29.close();

    canvas.drawPath(path29, room[16]);

    Path path30 = Path();
    path30.moveTo(size.width * 0.5700000, size.height * 0.3633333);
    path30.lineTo(size.width * 0.5699875, size.height * 0.4183333);
    path30.lineTo(size.width * 0.6371125, size.height * 0.4186000);
    path30.lineTo(size.width * 0.6371000, size.height * 0.3639500);
    path30.lineTo(size.width * 0.5700000, size.height * 0.3633333);
    path30.close();

    canvas.drawPath(path30, room[17]);

    Path path31 = Path();
    path31.moveTo(size.width * 0.5131500, size.height * 0.3628000);
    path31.lineTo(size.width * 0.5133625, size.height * 0.4174667);
    path31.lineTo(size.width * 0.5464500, size.height * 0.4178000);
    path31.lineTo(size.width * 0.5458500, size.height * 0.3628000);
    path31.lineTo(size.width * 0.5131500, size.height * 0.3628000);
    path31.close();

    canvas.drawPath(path31, room[18]);

    Path path32 = Path();
    path32.moveTo(size.width * 0.5487500, size.height * 0.4183333);
    path32.lineTo(size.width * 0.5487500, size.height * 0.3633333);
    path32.lineTo(size.width * 0.5662500, size.height * 0.3633333);
    path32.lineTo(size.width * 0.5662500, size.height * 0.4183333);
    path32.lineTo(size.width * 0.5487500, size.height * 0.4183333);
    path32.close();

    canvas.drawPath(path32, room[19]);

    Path path33 = Path();
    path33.moveTo(size.width * 0.3655750, size.height * 0.3652667);
    path33.lineTo(size.width * 0.3987500, size.height * 0.3653333);
    path33.lineTo(size.width * 0.3989500, size.height * 0.4173000);
    path33.lineTo(size.width * 0.3655625, size.height * 0.4171833);
    path33.lineTo(size.width * 0.3655750, size.height * 0.3652667);
    path33.close();

    canvas.drawPath(
        path33, room[20]); ////////////////////////////////////////////bar

    Path path34 = Path();
    path34.moveTo(size.width * 0.0761000, size.height * 0.4708500);
    path34.lineTo(size.width * 0.0759500, size.height * 0.5126833);
    path34.lineTo(size.width * 0.1083000, size.height * 0.5133333);
    path34.lineTo(size.width * 0.1086000, size.height * 0.4712667);
    path34.lineTo(size.width * 0.0761000, size.height * 0.4708500);
    path34.close();

    canvas.drawPath(path34, room[21]);

    Path path35 = Path();
    path35.moveTo(size.width * 0.1100000, size.height * 0.4874667);
    path35.lineTo(size.width * 0.1100000, size.height * 0.5133333);
    path35.lineTo(size.width * 0.1309000, size.height * 0.5130667);
    path35.lineTo(size.width * 0.1309000, size.height * 0.4875333);
    path35.lineTo(size.width * 0.1100000, size.height * 0.4874667);
    path35.close();

    canvas.drawPath(path35, room[22]);

    Path path36 = Path();
    path36.moveTo(size.width * 0.4039375, size.height * 0.4469000);
    path36.lineTo(size.width * 0.4037500, size.height * 0.5166667);
    path36.lineTo(size.width * 0.4210625, size.height * 0.5169167);
    path36.lineTo(size.width * 0.4214250, size.height * 0.4476333);
    path36.lineTo(size.width * 0.4039375, size.height * 0.4469000);
    path36.close();

    canvas.drawPath(path36, room[23]);

    Path path37 = Path();
    path37.moveTo(size.width * 0.4031375, size.height * 0.2289000);
    path37.lineTo(size.width * 0.4035500, size.height * 0.4169667);
    path37.lineTo(size.width * 0.4810500, size.height * 0.4175000);
    path37.lineTo(size.width * 0.4808250, size.height * 0.2302667);
    path37.lineTo(size.width * 0.4031375, size.height * 0.2289000);
    path37.close();

    canvas.drawPath(path37, room[24]);

    Path path38 = Path();
    path38.moveTo(size.width * 0.3656125, size.height * 0.3274833);
    path38.lineTo(size.width * 0.3654125, size.height * 0.3619500);
    path38.lineTo(size.width * 0.3989625, size.height * 0.3622333);
    path38.lineTo(size.width * 0.3987500, size.height * 0.3275000);
    path38.lineTo(size.width * 0.3656125, size.height * 0.3274833);
    path38.close();

    canvas.drawPath(path38, room[25]);

    Path path39 = Path();
    path39.moveTo(size.width * 0.3650000, size.height * 0.2266667);
    path39.lineTo(size.width * 0.3650000, size.height * 0.2880667);
    path39.lineTo(size.width * 0.3991750, size.height * 0.2878000);
    path39.lineTo(size.width * 0.3985375, size.height * 0.2275000);
    path39.lineTo(size.width * 0.3650000, size.height * 0.2266667);
    path39.close();

    canvas.drawPath(path39, room[26]);

    Path path40 = Path();
    path40.moveTo(size.width * 0.3216500, size.height * 0.2888833);
    path40.lineTo(size.width * 0.3216625, size.height * 0.3225167);
    path40.lineTo(size.width * 0.3993875, size.height * 0.3227833);
    path40.lineTo(size.width * 0.3991750, size.height * 0.2897167);
    path40.lineTo(size.width * 0.3216500, size.height * 0.2888833);
    path40.close();

    canvas.drawPath(path40, room[27]);

    Path path41 = Path();
    path41.moveTo(size.width * 0.2787375, size.height * 0.2261000);
    path41.lineTo(size.width * 0.2785375, size.height * 0.2644500);
    path41.lineTo(size.width * 0.3191750, size.height * 0.2639333);
    path41.lineTo(size.width * 0.3187375, size.height * 0.2261333);
    path41.lineTo(size.width * 0.2787375, size.height * 0.2261000);
    path41.close();

    canvas.drawPath(path41, room[28]);

    Path path42 = Path();
    path42.moveTo(size.width * 0.3217875, size.height * 0.2269833);
    path42.lineTo(size.width * 0.3222000, size.height * 0.2846833);
    path42.lineTo(size.width * 0.3625000, size.height * 0.2850000);
    path42.lineTo(size.width * 0.3627375, size.height * 0.2273833);
    path42.lineTo(size.width * 0.3217875, size.height * 0.2269833);
    path42.close();

    canvas.drawPath(path42, room[29]);

    Path path43 = Path();
    path43.moveTo(size.width * 0.3050000, size.height * 0.2900000);
    path43.lineTo(size.width * 0.3050000, size.height * 0.3216667);
    path43.lineTo(size.width * 0.3187500, size.height * 0.3216667);
    path43.lineTo(size.width * 0.3187500, size.height * 0.2900000);
    path43.lineTo(size.width * 0.3050000, size.height * 0.2900000);
    path43.close();

    canvas.drawPath(path43, room[30]);

    Path path44 = Path();
    path44.moveTo(size.width * 0.2460000, size.height * 0.2895000);
    path44.lineTo(size.width * 0.2460000, size.height * 0.3210000);
    path44.lineTo(size.width * 0.2640000, size.height * 0.3211667);
    path44.lineTo(size.width * 0.2637500, size.height * 0.2983333);
    path44.lineTo(size.width * 0.2766250, size.height * 0.2985000);
    path44.lineTo(size.width * 0.2765250, size.height * 0.2891667);
    path44.lineTo(size.width * 0.2460000, size.height * 0.2895000);
    path44.close();

    canvas.drawPath(path44, room[31]);

    Path path45 = Path();
    path45.moveTo(size.width * 0.2323125, size.height * 0.2256667);
    path45.lineTo(size.width * 0.2321250, size.height * 0.2638333);
    path45.lineTo(size.width * 0.2762500, size.height * 0.2638333);
    path45.lineTo(size.width * 0.2760625, size.height * 0.2261667);
    path45.lineTo(size.width * 0.2323125, size.height * 0.2256667);
    path45.close();

    canvas.drawPath(path45, room[32]);

    Path path46 = Path();
    path46.moveTo(size.width * 0.1950000, size.height * 0.2273167);
    path46.lineTo(size.width * 0.1950000, size.height * 0.2850000);
    path46.lineTo(size.width * 0.2287500, size.height * 0.2850000);
    path46.lineTo(size.width * 0.2287500, size.height * 0.2278333);
    path46.lineTo(size.width * 0.1950000, size.height * 0.2273167);
    path46.close();

    canvas.drawPath(path46, room[33]);

    Path path47 = Path();
    path47.moveTo(size.width * 0.1233750, size.height * 0.2264167);
    path47.lineTo(size.width * 0.1233750, size.height * 0.2850000);
    path47.lineTo(size.width * 0.1562500, size.height * 0.2844833);
    path47.lineTo(size.width * 0.1560625, size.height * 0.2269167);
    path47.lineTo(size.width * 0.1233750, size.height * 0.2264167);
    path47.close();

    canvas.drawPath(path47, room[34]);

    Path path48 = Path();
    path48.moveTo(size.width * 0.3442375, size.height * 0.3904167);
    path48.lineTo(size.width * 0.3443125, size.height * 0.4166667);
    path48.lineTo(size.width * 0.3625000, size.height * 0.4166667);
    path48.lineTo(size.width * 0.3623125, size.height * 0.3906667);
    path48.lineTo(size.width * 0.3442375, size.height * 0.3904167);
    path48.close();

    canvas.drawPath(path48, elevator); /////////////////////////////////elevator

    Path path49 = Path();
    path49.moveTo(size.width * 0.3437500, size.height * 0.3266667);
    path49.lineTo(size.width * 0.3444375, size.height * 0.3885833);
    path49.lineTo(size.width * 0.3625000, size.height * 0.3883333);
    path49.lineTo(size.width * 0.3625000, size.height * 0.3266667);
    path49.lineTo(size.width * 0.3437500, size.height * 0.3266667);
    path49.close();

    canvas.drawPath(path49, room[36]);

    Path path50 = Path();
    path50.moveTo(size.width * 0.5048125, size.height * 0.3233333);
    path50.lineTo(size.width * 0.5048125, size.height * 0.2816667);
    path50.lineTo(size.width * 0.5226875, size.height * 0.2817500);
    path50.lineTo(size.width * 0.5225750, size.height * 0.2710000);
    path50.lineTo(size.width * 0.5566250, size.height * 0.2711667);
    path50.lineTo(size.width * 0.5569375, size.height * 0.3235833);
    path50.lineTo(size.width * 0.5048125, size.height * 0.3233333);
    path50.close();

    canvas.drawPath(path50, room[37]);

    Path path51 = Path();
    path51.moveTo(size.width * 0.5225000, size.height * 0.2685500);
    path51.lineTo(size.width * 0.5224375, size.height * 0.2285000);
    path51.lineTo(size.width * 0.5657625, size.height * 0.2285000);
    path51.lineTo(size.width * 0.5662500, size.height * 0.3233333);
    path51.lineTo(size.width * 0.5580000, size.height * 0.3230833);
    path51.lineTo(size.width * 0.5578750, size.height * 0.2685833);
    path51.lineTo(size.width * 0.5225000, size.height * 0.2685500);
    path51.close();

    canvas.drawPath(path51, room[38]);

    Path path52 = Path();
    path52.moveTo(size.width * 0.5685625, size.height * 0.2295000);
    path52.lineTo(size.width * 0.5687500, size.height * 0.3005000);
    path52.lineTo(size.width * 0.5957500, size.height * 0.3007500);
    path52.lineTo(size.width * 0.5962500, size.height * 0.2292500);
    path52.lineTo(size.width * 0.5685625, size.height * 0.2295000);
    path52.close();

    canvas.drawPath(path52, room[39]);

    Path path53 = Path();
    path53.moveTo(size.width * 0.5975000, size.height * 0.2300000);
    path53.lineTo(size.width * 0.5975000, size.height * 0.3000000);
    path53.lineTo(size.width * 0.6237500, size.height * 0.3000000);
    path53.lineTo(size.width * 0.6237500, size.height * 0.2300000);
    path53.lineTo(size.width * 0.5975000, size.height * 0.2300000);
    path53.close();

    canvas.drawPath(path53, room[40]);

    Path path54 = Path();
    path54.moveTo(size.width * 0.6625000, size.height * 0.2783333);
    path54.lineTo(size.width * 0.6625000, size.height * 0.3233333);
    path54.lineTo(size.width * 0.7162500, size.height * 0.3233333);
    path54.lineTo(size.width * 0.7162500, size.height * 0.2783333);
    path54.lineTo(size.width * 0.6625000, size.height * 0.2783333);
    path54.close();

    canvas.drawPath(path54, room[41]);

    Path path55 = Path();
    path55.moveTo(size.width * 0.7437500, size.height * 0.2783333);
    path55.lineTo(size.width * 0.7437500, size.height * 0.3233333);
    path55.lineTo(size.width * 0.7987500, size.height * 0.3233333);
    path55.lineTo(size.width * 0.7991125, size.height * 0.2784667);
    path55.lineTo(size.width * 0.7437500, size.height * 0.2783333);
    path55.close();

    canvas.drawPath(path55, room[42]);

    Path path56 = Path();
    path56.moveTo(size.width * 0.7442375, size.height * 0.2080833);
    path56.lineTo(size.width * 0.7444375, size.height * 0.2764167);
    path56.lineTo(size.width * 0.7986250, size.height * 0.2767500);
    path56.lineTo(size.width * 0.7984375, size.height * 0.2083333);
    path56.lineTo(size.width * 0.7442375, size.height * 0.2080833);
    path56.close();

    canvas.drawPath(path56, room[43]);

    Path path57 = Path();
    path57.moveTo(size.width * 0.6643125, size.height * 0.1800000);
    path57.lineTo(size.width * 0.6642625, size.height * 0.2519167);
    path57.lineTo(size.width * 0.7423250, size.height * 0.2516667);
    path57.lineTo(size.width * 0.7421875, size.height * 0.1802500);
    path57.lineTo(size.width * 0.6643125, size.height * 0.1800000);
    path57.close();

    canvas.drawPath(path57, room[44]);

    Path path58 = Path();
    path58.moveTo(size.width * 0.7435750, size.height * 0.1795000);
    path58.lineTo(size.width * 0.7438750, size.height * 0.2057500);
    path58.lineTo(size.width * 0.7762500, size.height * 0.2057500);
    path58.lineTo(size.width * 0.7762500, size.height * 0.1800000);
    path58.lineTo(size.width * 0.7435750, size.height * 0.1795000);
    path58.close();

    canvas.drawPath(path58, room[45]);

    Path path59 = Path();
    path59.moveTo(size.width * 0.7780000, size.height * 0.1800000);
    path59.lineTo(size.width * 0.7776875, size.height * 0.2057500);
    path59.lineTo(size.width * 0.7981875, size.height * 0.2057500);
    path59.lineTo(size.width * 0.7985750, size.height * 0.1802500);
    path59.lineTo(size.width * 0.7780000, size.height * 0.1800000);
    path59.close();

    canvas.drawPath(path59, room[46]);

    Path path60 = Path();
    path60.moveTo(size.width * 0.0750000, size.height * 0.2235500);
    path60.lineTo(size.width * 0.0753750, size.height * 0.3183333);
    path60.lineTo(size.width * 0.1203500, size.height * 0.3197833);
    path60.lineTo(size.width * 0.1200000, size.height * 0.2245167);
    path60.lineTo(size.width * 0.0750000, size.height * 0.2235500);
    path60.close();

    canvas.drawPath(path60, room[47]);

    Path path61 = Path();
    path61.moveTo(size.width * 0.1675000, size.height * 0.2683333);
    path61.lineTo(size.width * 0.1675000, size.height * 0.2883333);
    path61.lineTo(size.width * 0.1844625, size.height * 0.2881000);
    path61.lineTo(size.width * 0.1842500, size.height * 0.2683333);
    path61.lineTo(size.width * 0.1675000, size.height * 0.2683333);
    path61.close();

    canvas.drawPath(
        path61, elevator); ///////////////////////////////////elevator

    Path path62 = Path();
    path62.moveTo(size.width * 0.2648000, size.height * 0.3000000);
    path62.lineTo(size.width * 0.2648000, size.height * 0.3216667);
    path62.lineTo(size.width * 0.2971000, size.height * 0.3219333);
    path62.lineTo(size.width * 0.2968500, size.height * 0.3003333);
    path62.lineTo(size.width * 0.2648000, size.height * 0.3000000);
    path62.close();

    canvas.drawPath(path62, room[49]);

    Path path63 = Path();
    path63.moveTo(size.width * 0.2787500, size.height * 0.2897333);
    path63.lineTo(size.width * 0.2787500, size.height * 0.2983333);
    path63.lineTo(size.width * 0.2966500, size.height * 0.2983333);
    path63.lineTo(size.width * 0.2968500, size.height * 0.2897333);
    path63.lineTo(size.width * 0.2787500, size.height * 0.2897333);
    path63.close();

    canvas.drawPath(path63, room[50]);

    Path path64 = Path();
    path64.moveTo(size.width * 0.3425000, size.height * 0.4500000);
    path64.lineTo(size.width * 0.3462500, size.height * 0.4500000);
    path64.lineTo(size.width * 0.3462500, size.height * 0.4716667);
    path64.lineTo(size.width * 0.3425000, size.height * 0.4716667);
    path64.lineTo(size.width * 0.3425000, size.height * 0.4500000);
    path64.close();

    canvas.drawPath(path64, room[51]);

    Path path65 = Path();
    path65.moveTo(size.width * 0.4850000, size.height * 0.2283333);
    path65.lineTo(size.width * 0.5212500, size.height * 0.2283333);
    path65.lineTo(size.width * 0.5212500, size.height * 0.2800000);
    path65.lineTo(size.width * 0.5037500, size.height * 0.2800000);
    path65.lineTo(size.width * 0.5037500, size.height * 0.3233333);
    path65.lineTo(size.width * 0.4924625, size.height * 0.3230000);
    path65.lineTo(size.width * 0.4925000, size.height * 0.3183333);
    path65.lineTo(size.width * 0.4946250, size.height * 0.3158333);
    path65.lineTo(size.width * 0.4946250, size.height * 0.2786667);
    path65.lineTo(size.width * 0.4848750, size.height * 0.2788500);
    path65.lineTo(size.width * 0.4850000, size.height * 0.2283333);
    path65.close();

    canvas.drawPath(path65, room[52]);

    Path path66 = Path();
    path66.moveTo(size.width * 0.5687500, size.height * 0.1750000);
    path66.lineTo(size.width * 0.5687500, size.height * 0.2250000);
    path66.lineTo(size.width * 0.6262500, size.height * 0.2250000);
    path66.lineTo(size.width * 0.6262500, size.height * 0.1750000);
    path66.lineTo(size.width * 0.5687500, size.height * 0.1750000);
    path66.close();

    canvas.drawPath(path66, room[53]);

    Path path67 = Path();
    path67.moveTo(size.width * 0.2319000, size.height * 0.3100000);
    path67.lineTo(size.width * 0.2318375, size.height * 0.3208000);
    path67.lineTo(size.width * 0.2439500, size.height * 0.3210667);
    path67.lineTo(size.width * 0.2441500, size.height * 0.3097333);
    path67.lineTo(size.width * 0.2319000, size.height * 0.3100000);
    path67.close();

    canvas.drawPath(path67, room[54]);

    Path path68 = Path();
    path68.moveTo(size.width * 0.7181500, size.height * 0.2984833);
    path68.lineTo(size.width * 0.7426500, size.height * 0.2983333);
    path68.lineTo(size.width * 0.7428000, size.height * 0.3239333);
    path68.lineTo(size.width * 0.7181500, size.height * 0.3239167);
    path68.lineTo(size.width * 0.7181500, size.height * 0.2984833);
    path68.close();

    canvas.drawPath(path68, room[55]);

    Path path69 = Path();
    path69.moveTo(size.width * 0.1587500, size.height * 0.2683333);
    path69.lineTo(size.width * 0.1587500, size.height * 0.2980833);
    path69.lineTo(size.width * 0.1825000, size.height * 0.2983333);
    path69.lineTo(size.width * 0.1825000, size.height * 0.2880833);
    path69.lineTo(size.width * 0.1669250, size.height * 0.2880833);
    path69.lineTo(size.width * 0.1670125, size.height * 0.2683333);
    path69.lineTo(size.width * 0.1587500, size.height * 0.2683333);
    path69.close();

    canvas.drawPath(path69, internalStairs);

    Path path70 = Path();
    path70.moveTo(size.width * 0.0762000, size.height * 0.4492000);
    path70.lineTo(size.width * 0.0762500, size.height * 0.4592000);
    path70.lineTo(size.width * 0.1089500, size.height * 0.4594667);
    path70.lineTo(size.width * 0.1089500, size.height * 0.4494667);
    path70.lineTo(size.width * 0.0762000, size.height * 0.4492000);
    path70.close();

    canvas.drawPath(path70, internalStairs);

    Path path71 = Path();
    path71.moveTo(size.width * 0.3675000, size.height * 0.4686667);
    path71.lineTo(size.width * 0.3677000, size.height * 0.5163167);
    path71.lineTo(size.width * 0.4016750, size.height * 0.5166667);
    path71.lineTo(size.width * 0.4016375, size.height * 0.4688000);
    path71.lineTo(size.width * 0.3675000, size.height * 0.4686667);
    path71.close();

    canvas.drawPath(path71, internalStairs);

    Path path72 = Path();
    path72.moveTo(size.width * 0.2412250, size.height * 0.2750000);
    path72.lineTo(size.width * 0.2412250, size.height * 0.2861333);
    path72.lineTo(size.width * 0.2675250, size.height * 0.2863833);
    path72.lineTo(size.width * 0.2675000, size.height * 0.2752333);
    path72.lineTo(size.width * 0.2412250, size.height * 0.2750000);
    path72.close();

    canvas.drawPath(path72, internalStairs);

    Path path73 = Path();
    path73.moveTo(size.width * 0.6291000, size.height * 0.2246000);
    path73.lineTo(size.width * 0.6618500, size.height * 0.2250000);
    path73.lineTo(size.width * 0.6615500, size.height * 0.1796000);
    path73.lineTo(size.width * 0.6291000, size.height * 0.1792000);
    path73.lineTo(size.width * 0.6291000, size.height * 0.2246000);
    path73.close();

    canvas.drawPath(path73, internalStairs);

    Path path74 = Path();
    path74.moveTo(size.width * 0.3064125, size.height * 0.5137500);
    path74.lineTo(size.width * 0.3064750, size.height * 0.5240167);
    path74.lineTo(size.width * 0.3353250, size.height * 0.5240167);
    path74.lineTo(size.width * 0.3351875, size.height * 0.5139333);
    path74.lineTo(size.width * 0.3064125, size.height * 0.5137500);
    path74.close();

    canvas.drawPath(path74, exit);

    Path path75 = Path();
    path75.moveTo(size.width * 0.0705625, size.height * 0.4487000);
    path75.lineTo(size.width * 0.0707500, size.height * 0.4674000);
    path75.lineTo(size.width * 0.0782375, size.height * 0.4674000);
    path75.lineTo(size.width * 0.0780375, size.height * 0.4486500);
    path75.lineTo(size.width * 0.0705625, size.height * 0.4487000);
    path75.close();

    canvas.drawPath(path75, exit);

    Path path76 = Path();
    path76.moveTo(size.width * 0.1670625, size.height * 0.2196333);
    path76.lineTo(size.width * 0.1670250, size.height * 0.2295833);
    path76.lineTo(size.width * 0.1833875, size.height * 0.2296167);
    path76.lineTo(size.width * 0.1836750, size.height * 0.2193833);
    path76.lineTo(size.width * 0.1670625, size.height * 0.2196333);
    path76.close();

    canvas.drawPath(path76, exit);

    Path path77 = Path();
    path77.moveTo(size.width * 0.5750500, size.height * 0.3199833);
    path77.lineTo(size.width * 0.5752000, size.height * 0.3300667);
    path77.lineTo(size.width * 0.5911750, size.height * 0.3303167);
    path77.lineTo(size.width * 0.5910500, size.height * 0.3199833);
    path77.lineTo(size.width * 0.5750500, size.height * 0.3199833);
    path77.close();

    canvas.drawPath(path77, exit);

    Path path78 = Path();
    path78.moveTo(size.width * 0.6399625, size.height * 0.3204667);
    path78.lineTo(size.width * 0.6399500, size.height * 0.3299500);
    path78.lineTo(size.width * 0.6598375, size.height * 0.3299333);
    path78.lineTo(size.width * 0.6599500, size.height * 0.3203833);
    path78.lineTo(size.width * 0.6399625, size.height * 0.3204667);
    path78.close();

    canvas.drawPath(path78, exit);

    Path path79 = Path();
    path79.moveTo(size.width * 0.4855125, size.height * 0.4161000);
    path79.lineTo(size.width * 0.4856625, size.height * 0.4237333);
    path79.lineTo(size.width * 0.5093500, size.height * 0.4242333);
    path79.lineTo(size.width * 0.5093875, size.height * 0.4159833);
    path79.lineTo(size.width * 0.4855125, size.height * 0.4161000);
    path79.close();

    canvas.drawPath(path79, exit);

    Path path80 = Path();
    path80.moveTo(size.width * 0.7961250, size.height * 0.1834000);
    path80.lineTo(size.width * 0.7963000, size.height * 0.2038333);
    path80.lineTo(size.width * 0.8033250, size.height * 0.2038333);
    path80.lineTo(size.width * 0.8033375, size.height * 0.1833333);
    path80.lineTo(size.width * 0.7961250, size.height * 0.1834000);
    path80.close();

    canvas.drawPath(path80, exit);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

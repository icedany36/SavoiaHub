import 'package:dijkstra/dijkstra.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savoiahub/util/FirstFloorPainter.dart';
import 'package:savoiahub/util/OutsidePainter.dart';
import 'package:savoiahub/util/SecondFloorPainter.dart';
import 'package:savoiahub/util/firstPathPainter.dart';
import 'package:savoiahub/util/secondPathPainter.dart';
import 'package:savoiahub/util/thirdFloorPainter.dart';
import 'package:savoiahub/util/thirdPathPainter.dart';
import 'package:swipe/swipe.dart';

String startPoint = "";
String endPoint = "";
var valueListenable = ValueNotifier(0);
var valueListenable2 = ValueNotifier(false);

int index = 0;

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> with SingleTickerProviderStateMixin {
  final mapScaleController = TransformationController();
  // there is an error if the controller is static
  static double dx = 0;
  static double dy = 0;

  bool outdoorisVisible = true;

  List<CustomPainter> floorPainters = [
    FirstFloorPainter(),
    SecondFloorPainter(),
    ThirdFloorPainter(),
  ];

  List<CustomPainter> pathPainters = [
    FirstPathPainter(),
    SecondPathPainter(),
    ThirdPathPainter(),
  ];

  static final _key1 = GlobalKey();

  double xCoo = 0.0;
  double yCoo = 0.0;

  TapDownDetails? tapDownDetails;
  TapDownDetails? tapDownDetails2;

  var controller = TransformationController();
  late AnimationController animationController;
  Animation<Matrix4>? animation;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (controller.value.getMaxScaleOnAxis() > 1) {
        setState(() {
          outdoorisVisible =
              false; // if this is true then the selected room will change it color in real time
        });
      } else {
        setState(() {
          outdoorisVisible = true;
        });
      }
    });

    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300))
      ..addListener(() {
        controller.value = animation!.value;
      });
  }

  // dispose
  @override
  void dispose() {
    super.dispose();

    animationController.removeListener(() {});
    animationController.dispose();
  }

  // update mouse position
  void _updateLocation(PointerEvent details) {
    setState(() {
      xCoo = details.localPosition.dx;
      yCoo = details.localPosition.dy;
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

  void zoom() {
    const double scale = 5;
    final x = -(dx - 20) * (scale - 0.6);
    final y = -dy * (scale - 1);
    final zoomed = Matrix4.identity()
      ..translate(x, y)
      ..scale(scale);

    final end = controller.value.isIdentity() ? zoomed : Matrix4.identity();

    animation = Matrix4Tween(
      begin: controller.value,
      end: end,
    ).animate(
      CurveTween(curve: Curves.easeOut).animate(animationController),
    );

    animationController.forward(from: 0.0);
  }

////////////////////////////////////////////////////////////////////////////////
  Widget buildImage(final displayWidth, final displayHeight) => MouseRegion(
        onHover: _updateLocation,
        child: GestureDetector(
          onDoubleTapDown: (details) => tapDownDetails = details,
          onDoubleTap: () {
            final position = tapDownDetails!.localPosition;
            setState(() {
              dx = position.dx;
              dy = position.dy;
            });
            zoom();
          },
          child: Stack(
            children: [
              InteractiveViewer(
                // modified it OverflowBox: (alignment: Alignment.left to Alignment.center)
                boundaryMargin: const EdgeInsets.only(
                    left: 15,
                    right:
                        -50), // activate it to use the default zoom and change only 'left'
                constrained: false,
                clipBehavior: Clip.none, // to show the image in fullscreen
                minScale: 1,
                maxScale: 10,
                transformationController: controller,
                child: Center(
                  child: SizedBox(
                    height: displayHeight,
                    width: displayWidth +
                        120, // for the zoom, add as an addendum what you put above, to the 'left'
                    child: FittedBox(
                      child: Transform.translate(
                        offset: const Offset(-20, 0),
                        child: RepaintBoundary(
                          child: Stack(
                            children: [
                              Visibility(
                                visible: outdoorisVisible,
                                child: CustomPaint(
                                  size: Size(displayWidth, displayWidth * 0.75),
                                  painter: OutsidePainter(),
                                ),
                              ),
                              ValueListenableBuilder(
                                valueListenable: valueListenable,
                                builder: (context, value, child) {
                                  return CustomPaint(
                                    key: _key1,
                                    size:
                                        Size(displayWidth, displayWidth * 0.75),
                                    painter: floorPainters[value],
                                  );
                                },
                              ),
                              GestureDetector(
                                onTapDown: (details) {
                                  tapDownDetails2 = details;
                                },
                                onTap: () {
                                  var position2 =
                                      tapDownDetails2!.localPosition;

                                  if ((position2.dx >=
                                              displayWidth * 0.3217875 &&
                                          position2.dx <=
                                              displayWidth * 0.3625000) &&
                                      (position2.dy >=
                                              (displayWidth * 0.75) *
                                                  0.2269833 &&
                                          position2.dy <=
                                              (displayWidth * 0.75) *
                                                  0.2846833)) {
                                    setState(
                                      () {
                                        FirstFloorPainter.room.insert(
                                            29,
                                            Paint()
                                              ..color = const Color.fromARGB(
                                                  255, 76, 0, 255)
                                              ..style = PaintingStyle.fill);

                                        valueListenable2.value = true;
                                        endPoint = 'LSI';
                                      },
                                    );
                                  }
                                },
                                child: ValueListenableBuilder(
                                  valueListenable: valueListenable,
                                  builder: (context, value, child) {
                                    return CustomPaint(
                                      size: Size(
                                          displayWidth, displayWidth * 0.75),
                                      painter: pathPainters[value],
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Text(
                  '($displayWidth, $displayHeight) ($xCoo, $yCoo)',
                  style: const TextStyle(color: Colors.red),
                ),
              ),
              ValueListenableBuilder(
                valueListenable: valueListenable2,
                builder: (context, value, child) {
                  return Visibility(
                    visible: value,
                    child: Swipe(
                      onSwipeDown: () => valueListenable2.value = false,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: 50,
                              left: MediaQuery.of(context).size.width / 5,
                              right: MediaQuery.of(context).size.width / 5),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                            child: SizedBox(
                              height: 200,
                              child: Container(
                                color: Colors.black,
                                child: Column(
                                  children: [
                                    OutlinedButton(
                                      onPressed: () {
                                        setState(
                                          () {
                                            valueListenable2.value = false;
                                            endPoint = '';
                                            startPoint = '';
                                            FastPath.from = null;
                                            FastPath.to = null;
                                            ResetPaint.resetPaint();
                                          },
                                        );
                                      },
                                      child: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        OutlinedButton(
                                          onPressed: () async {
                                            endPoint = await showSearch(
                                              context: context,
                                              delegate: CustomSearchDelegate(),
                                            );
                                            FastPath.to =
                                                FastPath.roomNode(endPoint);

                                            print(FastPath.to);

                                            if (FastPath.from != null &&
                                                FastPath.to != null) {
                                              FastPath.fastesPath();
                                            }
                                          },
                                          child: const Icon(
                                            CupertinoIcons.location_solid,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                        Text(
                                          endPoint,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        OutlinedButton(
                                          onPressed: () async {
                                            startPoint = await showSearch(
                                              context: context,
                                              delegate: CustomSearchDelegate(),
                                            );
                                            FastPath.from =
                                                FastPath.roomNode(startPoint);

                                            print(FastPath.from);

                                            if (FastPath.from != null &&
                                                FastPath.to != null) {
                                              FastPath.fastesPath();
                                            }
                                          },
                                          child: const Icon(
                                            CupertinoIcons
                                                .location_north_line_fill,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                        Text(
                                          startPoint,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      );
}

////////////////////////////////////////////////////////////////////////////////
class CustomSearchDelegate extends SearchDelegate {
  final searchTerms = [
    'Aula 1',
    // 'Aula 2',
    'Aula 3',
    'Aula 4',
    'Aula 25',
    'Aula 26',
    'Aula 27',
    'Aula 29',
    'Aula Briefing',
    'LMC',
    'TDP ELE',
    'LIC',
    'CDC',
    'DM',
    'LSE',
    'LI',
    'Sala Professori',
    'Bar',
    'OMU',
    'LT',
    'LSM',
    'LSI',
    'Magazzino'
  ];

  final recentSearchTerms = ['Bar'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> suggestions = [];
    for (var term in searchTerms) {
      if (term.toLowerCase().contains(query.toLowerCase())) {
        suggestions.add(term);
      }
    }
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            suggestions[index],
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          onTap: () {
            close(context, searchTerms[index]);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recentSearchTerms
        : searchTerms.where((searchTerm) {
            final termLower = searchTerm.toLowerCase();
            final queryLower = query.toLowerCase();

            return termLower.startsWith(queryLower);
          }).toList();

    return buildSuggestionsSuccess(suggestions);
  }

  Widget buildSuggestionsSuccess(List<String> suggestions) => ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];
          final queryText = suggestion.substring(0, query.length);
          final remainingText = suggestion.substring(query.length);
          return ListTile(
            onTap: () {
              query = suggestion;

              close(context, suggestion);
            },
            title: RichText(
              text: TextSpan(
                text: queryText,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                    text: remainingText,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
}

////////////////////////////////////////////////////////////////////////////////
mapToolsController(int index, BuildContext context) async {
  switch (index) {
    case 0:
      if (valueListenable2.value) {
        valueListenable2.value = false;
      } else {
        valueListenable2.value = true;
      }

      break;

    case 1:
      valueListenable.value = 0;
      break;

    case 2:
      valueListenable.value = 1;

      break;

    case 3:
      valueListenable.value = 2;
      break;

    default:
      print("ERROR TOOLS CONTROLLER");
  }
}

// Floor color reset
class ResetPaint {
  static resetPaint() {
    for (int i = 0; i < 100; i++) {
      FirstFloorPainter.room.insert(
          i,
          Paint()
            ..color = const Color.fromARGB(255, 181, 137, 0)
            ..style = PaintingStyle.fill);
    }
  }
}

////////////////////////////////////////////////////////////////////////////////
class FastPath {
  static int? from;
  static int? to;
  static var output = [];
  static bool focus = false;

  static int roomNode(String point) {
    switch (point) {
      case 'LSI':
        if (!focus) {
          for (int i = 0; i < 100; i++) {
            FirstFloorPainter.room.insert(
                i,
                Paint()
                  ..color = const Color.fromARGB(255, 53, 53, 53)
                  ..style = PaintingStyle.fill);
          }
        }
        FirstFloorPainter.room.insert(
            29,
            Paint()
              ..color = const Color.fromARGB(255, 76, 0, 255)
              ..style = PaintingStyle.fill);
        return 33;

      case 'Magazzino':
        return 19;

      case 'Aula 1':
        return 22;

      case 'Aula 3':
        return 36;

      case 'Aula 4':
        return 33;

      case 'LMC':
        return 0;

      case 'Briefing':
        return 39;

      case 'CDC':
        return 2;

      case 'Presidenza':
        return 4;

      case 'Fotocopie':
        return 9;

      case 'Sala Professori':
        return 15;

      case 'Ascensore SUD':
        return 16;

      case 'Ascensore NORD':
        return 40;

      case 'Bar':
        return 17;

      case 'OMU':
        return 18;

      case 'LTM':
        return 18;

      case 'Aula DM':
        return 21;

      case 'LI':
        return 3;

      case 'Aula CAD-CAM':
        return 22;

      case 'LSM':
        return 22;

      case 'LIC':
        return 24;

      case 'Aula 25':
        return 26;

      case 'Aula 26':
        return 26;

      case 'Aula 27':
        return 27;

      case 'TDP ELE':
        return 30;

      case 'CE.PRO.MEDIA':
        return 30;

      case 'LSE':
        return 31;

      case 'Aula 29':
        return 31;

      default:
        print("Node Error");
        return 0;
    }

    /* double wow = _MapPageState._key1.currentContext!.size!.width;

    // for room zoom in
    controller.value = Matrix4.identity()
      ..scale(5)
      ..translate(
          (-(((wow * 0.2112500)) *
                      ((MediaQuery.of(context).size.width + 85) / wow)) /
                  5) -
              30,
          -(((wow * 0.75) * 0.2583333) *
                  (MediaQuery.of(context).size.height / wow)) *
              (5 - 1)); */
  }

  static fastesPath() {
    Map graph = {
      // First Floor Nodes Links
      0: {1: 3, 40: 5},
      1: {2: 3, 0: 3},
      2: {3: 4, 1: 3},
      3: {4: 3, 2: 4},
      4: {5: 6, 6: 5, 7: 3},
      5: {4: 6},
      6: {105: 2, 4: 5},
      7: {8: 3, 4: 3},
      8: {9: 3, 7: 3},
      9: {10: 5, 8: 3},
      10: {11: 5, 9: 5},
      11: {12: 3, 15: 3},
      12: {13: 3, 11: 3, 14: 6},
      13: {12: 3},
      14: {112: 2, 12: 6},
      15: {16: 3, 11: 3},
      16: {17: 4, 15: 3},
      17: {18: 5, 16: 4},
      18: {19: 2, 17: 5},
      19: {20: 3, 18: 2},
      20: {21: 4, 23: 7, 19: 3},
      21: {22: 4, 20: 4},
      22: {21: 4},
      23: {24: 4, 20: 7},
      24: {25: 6, 23: 4},
      25: {26: 3, 24: 6},
      26: {27: 3, 25: 3},
      27: {28: 5, 26: 3},
      28: {29: 4, 27: 5},
      29: {30: 5, 32: 5, 28: 4},
      30: {31: 5, 29: 5},
      31: {30: 5},
      32: {142: 0, 29: 5},
      33: {34: 4, 35: 4},
      34: {33: 4},
      35: {36: 5, 33: 4},
      36: {37: 1, 35: 5},
      37: {38: 2, 135: 4, 36: 1},
      38: {39: 3, 37: 2},
      39: {40: 3, 38: 3},
      40: {41: 4, 0: 5, 39: 3},
      41: {42: 1, 40: 4},
      42: {43: 1, 45: 3, 41: 1},
      43: {44: 2, 42: 1},
      44: {132: 0},
      45: {42: 3},

      // Second Floor Nodes Links
      100: {101: 2, 128: 2, 127: 8},
      101: {102: 5, 100: 2},
      102: {103: 5, 101: 5},
      103: {104: 2, 102: 5},
      104: {105: 5, 106: 6, 103: 2},
      105: {6: 2, 104: 5, 203: 0},
      106: {107: 3, 104: 6},
      107: {108: 6, 106: 3},
      108: {109: 6, 107: 6},
      109: {110: 4, 108: 6},
      110: {111: 3, 113: 3, 109: 4},
      111: {112: 3, 110: 3},
      112: {14: 2, 111: 3, 209: 0},
      113: {114: 9, 110: 3},
      114: {115: 3, 118: 5, 113: 9},
      115: {116: 7, 114: 3},
      116: {117: 5, 115: 7},
      117: {116: 5},
      118: {119: 8, 114: 5},
      119: {120: 2, 136: 4},
      120: {121: 5, 119: 2},
      121: {122: 5, 120: 5},
      122: {123: 4, 121: 5},
      123: {124: 3, 122: 4},
      124: {125: 5, 123: 3},
      125: {126: 3, 133: 3, 124: 5},
      126: {127: 1, 125: 3},
      127: {100: 8, 126: 1},
      128: {129: 3, 100: 3},
      129: {130: 5, 128: 3},
      130: {131: 3, 129: 5},
      131: {132: 3, 130: 3},
      132: {44: 0, 131: 3},
      133: {134: 4, 125: 3},
      134: {135: 1, 133: 4},
      135: {37: 4, 134: 1},
      136: {137: 6, 119: 4},
      137: {138: 6, 136: 6},
      138: {139: 4, 137: 6},
      139: {140: 4, 138: 4},
      140: {141: 4, 139: 4},
      141: {142: 6, 140: 4},
      142: {32: 0, 141: 6},

      // Third Floor Nodes Links
      200: {201: 4},
      201: {202: 2, 204: 9, 200: 4},
      202: {203: 8, 201: 2},
      203: {105: 0, 202: 8},
      204: {205: 4, 203: 8},
      205: {206: 7, 204: 4},
      206: {207: 7, 205: 7},
      207: {208: 7, 210: 7, 206: 7},
      208: {209: 5, 207: 7},
      209: {112: 0, 208: 5},
      210: {211: 9, 207: 7},
      211: {212: 6, 210: 9},
      212: {213: 2, 211: 6},
      213: {214: 6, 212: 2},
      214: {215: 2, 213: 6},
      215: {216: 3, 214: 2},
    };

    output = Dijkstra.findPathFromGraph(graph, from, to);
    print(output);
  }
}

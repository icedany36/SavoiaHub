import 'package:flutter/material.dart';
import 'package:savoiahub/main.dart';
import 'package:savoiahub/util/FirstFloorPainter.dart';
import 'package:savoiahub/util/OutsidePainter.dart';
import 'package:savoiahub/util/SecondFloorPainter.dart';
import 'package:savoiahub/util/barExtension.dart';
import 'package:savoiahub/util/thirdFloorPainter.dart';
import 'package:swipe/swipe.dart';

String startPoint = "";
String endPoint = "";
var valueListenable = ValueNotifier(1);

var controller = TransformationController();

int index = 0;

bool ExtensionIsVisibile = false;

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

  List<CustomPainter> painters = [
    OutsidePainter(),
    FirstFloorPainter(),
    SecondFloorPainter(),
    ThirdFloorPainter(),
  ];

  static final _key1 = GlobalKey();

  double xCoo = 0.0;
  double yCoo = 0.0;

  TapDownDetails? tapDownDetails;
  TapDownDetails? tapDownDetails2;

  late AnimationController animationController;
  Animation<Matrix4>? animation;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (controller.value.getMaxScaleOnAxis() > 1) {
        setState(() {
          outdoorisVisible = false;
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

  Widget buildImage(final displayWidth, final displayHeight) => MouseRegion(
        onHover: _updateLocation,
        child: GestureDetector(
          onTap: () {
            if (ExtensionIsVisibile) ExtensionIsVisibile = false;
          },
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
                        -50), // attivarlo per usare lo zoom di default e modificare solo 'left'
                constrained: false,
                clipBehavior: Clip.none, // to show the image in fullscreen
                minScale: 1,
                maxScale: 10,
                transformationController: controller,
                child: Center(
                  child: SizedBox(
                    height: displayHeight,
                    width: displayWidth +
                        120, // per lo zoom, aggiungere come addendo quello che si e' messo sopra, al 'left'
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
                                builder: (context, n, c) {
                                  return GestureDetector(
                                    onTapDown: (details) =>
                                        tapDownDetails2 = details,
                                    onTap: () {
                                      final position2 =
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
                                        setState(() {
                                          FirstFloorPainter.room.insert(
                                              29,
                                              Paint()
                                                ..color = Color.fromARGB(
                                                    255, 76, 0, 255)
                                                ..style = PaintingStyle.fill);
                                        });
                                      }
                                    },
                                    child: CustomPaint(
                                      key: _key1,
                                      size: Size(
                                          displayWidth, displayWidth * 0.75),
                                      painter: painters[n],
                                    ),
                                  );
                                },
                              ),
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
              Visibility(
                visible: ExtensionIsVisibile,
                child: Swipe(
                  onSwipeDown: () => ExtensionIsVisibile = false,
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
                                        ExtensionIsVisibile = false;
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
                                        startPoint = await showSearch(
                                          context: context,
                                          delegate: CustomSearchDelegate(),
                                        );
                                      },
                                      child: const Icon(
                                        Icons.abc,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                    Text(startPoint,
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    OutlinedButton(
                                      onPressed: () async {
                                        endPoint = await showSearch(
                                          context: context,
                                          delegate: CustomSearchDelegate(),
                                        );
                                      },
                                      child: const Icon(
                                        Icons.abc,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                    Text(endPoint,
                                        style: TextStyle(color: Colors.white)),
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
              ),
            ],
          ),
        ),
      );
}

class CustomSearchDelegate extends SearchDelegate {
  final searchTerms = [
    'Test1',
    'Test2',
    'Test3',
    'Aula LSI',
    'Aula 30',
  ];

  final recentSearchTerms = ['Test3'];

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

MapToolsController(int index, BuildContext context) async {
  switch (index) {
    case 0:
      var results = await showSearch(
        context: context,
        delegate: CustomSearchDelegate(),
      );
      switch (results) {
        case 'Aula LSI':
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

          for (int i = 0; i < 100; i++) {
            FirstFloorPainter.room.insert(
                i,
                Paint()
                  ..color = Color.fromARGB(255, 53, 53, 53)
                  ..style = PaintingStyle.fill);
          }
          FirstFloorPainter.room.insert(
              29,
              Paint()
                ..color = Color.fromARGB(255, 76, 0, 255)
                ..style = PaintingStyle.fill);

          ExtensionIsVisibile = true;
          startPoint = results;

          break;

        case 'Aula 30':
          print('lalalalala');
          ExtensionIsVisibile = true;
          startPoint = results;
          break;

        default:
          print("Nothing");
      }

      break;

    case 1:
      valueListenable.value = 1;
      break;

    case 2:
      valueListenable.value = 2;
      /*Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MapPage(),
        ), 
      ); */

      break;

    case 3:
      valueListenable.value = 3;
      break;

    default:
      print("ERROR TOOLS CONTROLLER");
  }
}

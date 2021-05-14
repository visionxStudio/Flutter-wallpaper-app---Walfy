import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:screenshot/screenshot.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:wallpaperapp/core/menuButtons/set_wallpaper.dart';
import 'clockOverlay.dart';
import 'collapsed_panel.dart';
import 'colorBar.dart';

class FullScreenWallpaper extends StatefulWidget {
  final String imageUrl;

  const FullScreenWallpaper({Key key, @required this.imageUrl})
      : super(key: key);

  @override
  _FullScreenWallpaperState createState() => _FullScreenWallpaperState();
}

class _FullScreenWallpaperState extends State<FullScreenWallpaper>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  AnimationController shakeController;
  bool isLoading = true;
  PaletteGenerator paletteGenerator;
  List<Color> colors;
  Color accent;
  bool colorChanged = false;
  File _imageFile;
  bool screenshotTaken = false;
  ScreenshotController screenshotController = ScreenshotController();
  PanelController panelController = PanelController();
  bool panelClosed = true;
  bool panelCollapsed = true;
  Future<String> _futureView;
  int firstTime = 0;

  // paletteGenerator for background
  Future<void> _updatePaletteGenerator() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
      paletteGenerator = await PaletteGenerator.fromImageProvider(
        CachedNetworkImageProvider(widget.imageUrl),
        maximumColorCount: 20,
      );
    });

    setState(() {
      isLoading = false;
    });
    colors = paletteGenerator.colors.toList();
    if (paletteGenerator.colors.length > 5) {
      colors = colors.sublist(0, 5);
    }
    setState(() {
      accent = colors[0];
    });
    if (accent.computeLuminance() > 0.5) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
          .copyWith(statusBarIconBrightness: Brightness.dark));
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
          .copyWith(statusBarIconBrightness: Brightness.light));
    }
  }

  void updateAccent() {
    if (colors.contains(accent)) {
      final index = colors.indexOf(accent);
      setState(() {
        accent = colors[(index + 1) % 5];
      });
      setState(() {
        colorChanged = true;
      });
      if (accent.computeLuminance() > 0.5) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
            .copyWith(statusBarIconBrightness: Brightness.dark));
      } else {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
            .copyWith(statusBarIconBrightness: Brightness.light));
      }
    }
    if (firstTime == 0) {
      // toasts.codeSend("Long press to reset.");
      Fluttertoast.showToast(msg: "Long press to reset");
      firstTime = 1;
    }
  }

  @override
  void initState() {
    shakeController = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    super.initState();
    // provider = widget.arguments![0] as String;
    // index = widget.arguments![1] as int;
    // link = widget.arguments![2] as String;
    isLoading = true;

    _updatePaletteGenerator();
  }

  @override
  void dispose() {
    super.dispose();
    shakeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Animation<double> offsetAnimation = Tween(begin: 0.0, end: 48.0)
        .chain(CurveTween(curve: Curves.easeOutCubic))
        .animate(shakeController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              shakeController.reverse();
            }
          });
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: isLoading ? Theme.of(context).primaryColor : accent,
      body: SlidingUpPanel(
        onPanelOpened: () {
          setState(() {
            panelCollapsed = false;
          });
          setState(() {
            panelCollapsed = false;
          });
          if (panelClosed) {
            debugPrint('Screenshot Starting');
            setState(() {
              panelClosed = false;
            });
            if (colorChanged) {
              screenshotController
                  .capture(
                pixelRatio: 3,
                delay: const Duration(milliseconds: 10),
              )
                  .then((Uint8List image) async {
                setState(() {
                  _imageFile = File.fromRawPath(image);
                  screenshotTaken = true;
                });
                debugPrint('Screenshot Taken');
              }).catchError((onError) {
                debugPrint(onError as String);
              });
            } else {
              screenshotController
                  .capture(
                pixelRatio: 3,
                delay: const Duration(milliseconds: 10),
              )
                  .then((Uint8List image) async {
                setState(() {
                  _imageFile = File.fromRawPath(image);
                  screenshotTaken = true;
                });
                debugPrint('Screenshot Taken');
              }).catchError((onError) {
                debugPrint(onError.toString());
              });
            }
          }
        },
        onPanelClosed: () {
          setState(() {
            panelCollapsed = true;
          });
          setState(() {
            panelClosed = true;
          });
        },
        backdropEnabled: true,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: const [],
        collapsed: CollapsedPanel(
          panelCollapsed: panelCollapsed,
          panelController: panelController,
        ),
        minHeight: MediaQuery.of(context).size.height / 20,
        parallaxEnabled: true,
        parallaxOffset: 0.00,
        color: Colors.transparent,
        maxHeight: MediaQuery.of(context).size.height * .43,
        controller: panelController,
        panel: Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          height: MediaQuery.of(context).size.height * .43,
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
              // filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 750),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: panelCollapsed
                      ? Theme.of(context).primaryColor.withOpacity(1)
                      : Theme.of(context).primaryColor.withOpacity(.5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: AnimatedOpacity(
                          duration: const Duration(),
                          opacity: panelCollapsed ? 0.0 : 1.0,
                          child: GestureDetector(
                            onTap: () {
                              panelController.close();
                            },
                            child: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ColorBar(colors: colors),
                    Center(
                      child: Text(
                        "Wallpaper Setting and Author info in here",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(Icons.memory_rounded),
                          Icon(Icons.notification_important),
                          Icon(Icons.favorite),
                          Icon(Icons.feedback_rounded),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SetWallpaperButton(
                            colorChanged: colorChanged,
                            url: screenshotTaken
                                ? _imageFile.path
                                : widget.imageUrl,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            AnimatedBuilder(
              animation: offsetAnimation,
              builder: (buildcontext, child) {
                if (offsetAnimation.value < 0.0) {
                  debugPrint('${offsetAnimation.value + 8.0}');
                }
                return GestureDetector(
                  onPanUpdate: (details) {
                    if (details.delta.dy < -10) {
                      panelController.open();
                      // HapticFeedback.vibrate();
                    }
                  },
                  onLongPress: () {
                    setState(() {
                      colorChanged = false;
                    });
                    HapticFeedback.vibrate();
                    shakeController.forward(from: 0.0);
                  },
                  onTap: () {
                    HapticFeedback.vibrate();
                    !isLoading ? updateAccent() : debugPrint("");
                    shakeController.forward(from: 0.0);
                  },
                  child: CachedNetworkImage(
                    imageUrl: widget.imageUrl,
                    imageBuilder: (context, imageProvider) => Screenshot(
                      controller: screenshotController,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: offsetAnimation.value * 1.25,
                            horizontal: offsetAnimation.value / 2),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(offsetAnimation.value),
                          image: DecorationImage(
                            colorFilter: colorChanged
                                ? ColorFilter.mode(accent, BlendMode.hue)
                                : null,
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Stack(
                      children: <Widget>[
                        const SizedBox.expand(child: Text("")),
                        Center(
                          child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(
                                Theme.of(context).errorColor,
                              ),
                              value: downloadProgress.progress),
                        ),
                      ],
                    ),
                    errorWidget: (context, url, error) => Center(
                      child: Icon(
                        Icons.memory_rounded,
                        color: isLoading
                            ? Theme.of(context).accentColor
                            : accent.computeLuminance() > 0.5
                                ? Colors.black
                                : Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(8.0, 32, 8, 8),
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  color: isLoading
                      ? Theme.of(context).accentColor
                      : accent.computeLuminance() > 0.5
                          ? Colors.black
                          : Colors.white,
                  icon: const Icon(
                    Icons.chevron_left,
                  ),
                ),
              ),
            ),
            // Building Clock overlay and icons overlay
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(8.0, 32, 8, 8),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration:
                                const Duration(milliseconds: 300),
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              animation = Tween(begin: 0.0, end: 1.0)
                                  .animate(animation);
                              return FadeTransition(
                                opacity: animation,
                                child: ClockOverlay(
                                  colorChanged: colorChanged,
                                  accent: accent,
                                  file: false,
                                ),
                              );
                            },
                            fullscreenDialog: true,
                            opaque: false));
                  },
                  color: isLoading
                      ? Theme.of(context).accentColor
                      : accent.computeLuminance() > 0.5
                          ? Colors.black
                          : Colors.white,
                  icon: Icon(
                    FontAwesomeIcons.eye,
                    size: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class ClockOverlay extends StatefulWidget {
  final bool file;
  final Color accent;
  final bool colorChanged;
  const ClockOverlay({
    @required this.file,
    @required this.accent,
    @required this.colorChanged,
  });
  @override
  _ClockOverlayState createState() => _ClockOverlayState();
}

class _ClockOverlayState extends State<ClockOverlay> {
  @override
  Widget build(BuildContext context) {
    final day = DateFormat('EEEE').format(DateTime.now());
    final month = DateFormat('MMMM').format(DateTime.now());
    final dayNo = DateFormat('d').format(DateTime.now());
    final suffix = dayNo[dayNo.length - 1] == "1"
        ? "ˢᵗ"
        : dayNo[dayNo.length - 1] == "2"
            ? "ⁿᵈ"
            : dayNo[dayNo.length - 1] == "3"
                ? "ʳᵈ"
                : "ᵗʰ";
    return Material(
      child: Stack(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "$day,",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: widget.accent == null
                          ? Theme.of(context).accentColor
                          : widget.accent.computeLuminance() > 0.5
                              ? Colors.black
                              : Colors.white,
                      fontFamily: "Roboto",
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "$month $dayNo$suffix | 27°C",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: widget.accent == null
                          ? Theme.of(context).accentColor
                          : widget.accent.computeLuminance() > 0.5
                              ? Colors.black
                              : Colors.white,
                      fontFamily: "Roboto",
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    "assets/images/dialer.png",
                    width: MediaQuery.of(context).size.width * 0.14,
                  ),
                  Image.asset(
                    "assets/images/messages.png",
                    width: MediaQuery.of(context).size.width * 0.14,
                  ),
                  Image.asset(
                    "assets/images/chrome.png",
                    width: MediaQuery.of(context).size.width * 0.14,
                  ),
                  Image.asset(
                    "assets/images/playstore.png",
                    width: MediaQuery.of(context).size.width * 0.14,
                  ),
                  Image.asset(
                    "assets/images/chrome.png",
                    width: MediaQuery.of(context).size.width * 0.14,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {Navigator.pop(context)},
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const Text(""),
            ),
          )
        ],
      ),
    );
  }
}

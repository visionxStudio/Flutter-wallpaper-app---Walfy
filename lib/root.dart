import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );

  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;

  EdgeInsets padding =
      const EdgeInsets.symmetric(vertical: 16, horizontal: 60.0);

  int _selectedItemPosition = 1;

  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;

  bool showUnselectedLabels = false;

  Gradient selectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.amber]);

  Color? containerColor;

  List<Color> containerColors = [
    const Color(0xFFFDE1D7),
    const Color(0xFFE4EDF5),
    const Color(0xFFE7EEED),
    const Color(0xFFF4E4CE),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      body: Center(
        child: Text(
          "Welcome",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: SnakeNavigationBar.color(
          shadowColor: Theme.of(context).secondaryHeaderColor.withOpacity(0.3),
          elevation: 6,
          behaviour: snakeBarStyle,
          snakeShape: snakeShape,
          shape: bottomBarShape,
          padding: padding,
          snakeViewColor: Theme.of(context).secondaryHeaderColor,
          selectedItemColor: snakeShape == SnakeShape.indicator
              ? Theme.of(context).secondaryHeaderColor
              : null,
          unselectedItemColor: Theme.of(context).unselectedWidgetColor,
          showUnselectedLabels: showUnselectedLabels,
          showSelectedLabels: showSelectedLabels,
          currentIndex: _selectedItemPosition,
          onTap: (index) => setState(() => _selectedItemPosition = index),
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30.0,
              ),
              label: 'Search',
            ),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                ),
                label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 30.0,
                ),
                label: 'settings')
          ],
          selectedLabelStyle: const TextStyle(fontSize: 14),
          unselectedLabelStyle: const TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}

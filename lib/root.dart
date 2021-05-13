import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:wallpaperapp/screens/homepage/home_screen.dart';
import 'package:wallpaperapp/screens/settings/settings_screen.dart';

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  ShapeBorder bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );

  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;

  EdgeInsets padding =
      const EdgeInsets.symmetric(vertical: 16, horizontal: 60.0);

  int _selectedItemPosition = 1;

  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = false;

  bool showUnselectedLabels = false;

  List<Widget> getBody = [HomeScreen(), HomeScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      body: getBody[_selectedItemPosition],
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: SnakeNavigationBar.color(
          elevation: 15,
          shadowColor: Colors.grey,
          behaviour: snakeBarStyle,
          snakeShape: snakeShape,
          shape: bottomBarShape,
          padding: padding,
          // ignore: deprecated_member_use
          snakeViewColor: Theme.of(context).accentColor,
          selectedItemColor: Colors.white,
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

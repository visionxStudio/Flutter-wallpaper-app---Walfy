import 'package:flutter/material.dart';
import 'package:wallpaperapp/screens/homepage/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomAppBar(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wallpaperapp/themes/theme_service.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ThemeService().changeThemeMode();
          },
          child: Text("Switch theme"),
        ),
      ),
    );
  }
}

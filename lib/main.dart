import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wallpaperapp/screens/homepage.dart';
import 'package:wallpaperapp/themes/themes.dart';

import 'themes/theme_service.dart';

void main() async {
  // Initializing the GetStorage to access to the storage
  GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper App',
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeService().getThemeMode()!,
      home: Homepage(),
    );
  }
}

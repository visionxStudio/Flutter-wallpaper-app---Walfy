import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wallpaperapp/root.dart';
import 'package:wallpaperapp/themes/themes.dart';

void main() async {
  GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        builder: (context, theme) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Wallpaper App',
            theme: theme,
            home: Root(),
          );
        },
        themeCollection: themeCollection);
  }
}

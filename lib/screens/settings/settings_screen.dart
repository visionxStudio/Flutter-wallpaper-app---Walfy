import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:configurable_expansion_tile_null_safety/configurable_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:wallpaperapp/screens/settings/settings_controller.dart';
import 'package:wallpaperapp/screens/settings/widgets/settings_tile.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  SettingsController settingsController =
      Get.put<SettingsController>(SettingsController());

  @override
  Widget build(BuildContext context) {
    // double _height = MediaQuery.of(context).size.height;
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          primary: true,
          child: Column(
            children: [
              buildTitle(context),
              SettingsTile(
                leading: "Buy Premium",
                subtitle: "Get Unlimited Setup & Filter",
                trail: false,
                icon: FontAwesomeIcons.crown,
              ),
              ConfigurableExpansionTile(
                onExpansionChanged: (bool value) {
                  settingsController.isDownloadExpanded.value = value;
                },
                kExpand: Duration(milliseconds: 400),
                header: Expanded(
                  child: SettingsTile(
                    leading: "Downloads",
                    subtitle: "View or Clear downloads",
                    trail: true,
                    icon: FontAwesomeIcons.longArrowAltDown,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SettingsTile(
                      leading: "My Downloads",
                      subtitle: "View all your downloaded wallpapers",
                      trail: false,
                      icon: FontAwesomeIcons.sdCard,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SettingsTile(
                      leading: "Clear Downloads",
                      subtitle: "Clear downloaded wallpapers",
                      trail: false,
                      icon: FontAwesomeIcons.folderMinus,
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                  ),
                ],
              ),
              SettingsTile(
                leading: "Sign in",
                subtitle: "Sign in to sync data across devices",
                trail: false,
                icon: FontAwesomeIcons.signInAlt,
              ),
              ConfigurableExpansionTile(
                onExpansionChanged: (bool value) {
                  settingsController.isDownloadExpanded.value = value;
                },
                kExpand: Duration(milliseconds: 400),
                header: Expanded(
                  child: SettingsTile(
                    leading: "General",
                    subtitle: "Change app look & settings",
                    trail: true,
                    icon: FontAwesomeIcons.fileImage,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SettingsTile(
                      leading: "Themes",
                      subtitle: "Toggle app themes",
                      trail: false,
                      icon: FontAwesomeIcons.wrench,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SettingsTile(
                      leading: "Clear Cache",
                      subtitle: "Clear app cache",
                      trail: false,
                      icon: FontAwesomeIcons.redo,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SettingsTile(
                      leading: "Restart App",
                      subtitle: "Force the app to restart",
                      trail: false,
                      icon: FontAwesomeIcons.powerOff,
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                  ),
                ],
              ),
              SettingsTile(
                leading: "About us",
                subtitle: "Github, Websites & more",
                trail: false,
                icon: FontAwesomeIcons.info,
              ),
              SizedBox(
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  AspectRatio buildTitle(BuildContext context) {
    return AspectRatio(
      aspectRatio: 9 / 7,
      child: Container(
        // ignore: deprecated_member_use
        color: Theme.of(context).accentColor,
        child: Center(
          child: TextLiquidFill(
            loadDuration: Duration(seconds: 2),
            waveDuration: Duration(seconds: 1),
            text: 'WALLPAPPER ', // TODO Change the App name in here
            waveColor: Colors.white,
            // ignore: deprecated_member_use
            boxBackgroundColor: Theme.of(context).accentColor,
            textStyle: TextStyle(
              fontSize: Theme.of(context).textTheme.headline1!.fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

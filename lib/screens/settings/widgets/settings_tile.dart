import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../settings_controller.dart';

class SettingsTile extends StatefulWidget {
  const SettingsTile({
    Key key,
    @required this.leading,
    @required this.subtitle,
    @required this.trail,
    @required this.icon,
  }) : super(key: key);

  final String leading;
  final String subtitle;
  final bool trail;
  final IconData icon;

  @override
  _SettingsTileState createState() => _SettingsTileState();
}

class _SettingsTileState extends State<SettingsTile>
    with SingleTickerProviderStateMixin {
  SettingsController settingsController =
      Get.put<SettingsController>(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                color: Theme.of(context).unselectedWidgetColor,
                size: 20,
              ),
              SizedBox(width: 30.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.leading,
                    style: GoogleFonts.montserrat(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: Theme.of(context).textTheme.headline6.color,
                    ),
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    widget.subtitle,
                    style: GoogleFonts.montserrat(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: Theme.of(context).textTheme.subtitle1.color,
                    ),
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                  ),
                ],
              ),
              Spacer(),
              widget.trail
                  ? Obx(() {
                      if (settingsController.isDownloadExpanded.value) {
                        return Icon(Icons.keyboard_arrow_up_rounded);
                      } else {
                        return Icon(
                          Icons.keyboard_arrow_down_rounded,
                        );
                      }
                    })
                  : Opacity(
                      opacity: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}

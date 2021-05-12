import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          Text(
            "Wallpaper App",
            style: GoogleFonts.montserrat(
              // ignore: deprecated_member_use
              color: Theme.of(context).textTheme.headline1!.color,
              fontSize: 24.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.thLarge),
          ),
        ],
      ),
    );
  }
}

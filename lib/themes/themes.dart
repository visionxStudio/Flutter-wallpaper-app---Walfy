import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';
import './config.dart' as config;

class AppThemes {
  static const int KLightTheme = 1;
  static const int KDarkTheme = 0;
  static const int KLightTheme2 = 2;
  static const int KDarkTheme2 = 3;
  static const int KLightTheme3 = 4;
  static const int KLightTheme4 = 5;
  static const int KDarkTheme3 = 6;
  static const int KDarkTheme4 = 7;
  static const int KDarkTheme5 = 8;
  static const int KDarkTheme6 = 9;
  static const int KDarkTheme7 = 10;
  static const int KDarkTheme8 = 11;
}

final themeCollection = ThemeCollection(
  themes: {
    AppThemes.KLightTheme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      canvasColor: Colors.transparent,
      primaryColor: Colors.white,
      brightness: Brightness.light,
      errorColor: const Color(0xFFE57697),
      // ignore: deprecated_member_use
      accentColor: Color(0xFFE57697),
      secondaryHeaderColor: Color(0xffe57697),
      unselectedWidgetColor: Colors.black54,
      focusColor: config.Colors().mainColor(1),
      hintColor: config.Colors().secondColor(1),
      textTheme: TextTheme(
        button: const TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: Color(0xFFFFFFFF),
        ),
        headline5: TextStyle(
          fontSize: 16.0,
          color: Colors.black.withOpacity(1),
          fontFamily: "Proxima Nova",
        ),
        headline4: TextStyle(
            fontSize: 16,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: config.Colors().accentColor(1)),
        headline3: const TextStyle(
          fontSize: 20,
          fontFamily: "Proxima Nova",
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        headline2: const TextStyle(
            fontSize: 24,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.black),
        headline1: TextStyle(
          fontFamily: 'Proxima Nova',
          color: config.Colors().accentColor(1),
          fontSize: 50,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: Colors.black54,
          fontFamily: "Roboto",
        ),
        headline6: TextStyle(
          fontSize: 13.0,
          color: Colors.black.withOpacity(.85),
          fontFamily: "Proxima Nova",
        ),
        bodyText2: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(.75),
        ),
        bodyText1: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(1),
        ),
        caption: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: config.Colors().accentColor(1),
        ),
      ),
    ),
    AppThemes.KDarkTheme: ThemeData(
      canvasColor: Colors.transparent,
      // primaryColor: Color(0xFF1F1F1F),
      brightness: Brightness.dark,
      errorColor: const Color(0xFFE57697),
      // ignore: deprecated_member_use
      accentColor: Color(0xFFE57697),
      unselectedWidgetColor: Colors.white,
      secondaryHeaderColor: Color(0xffe57697),
      focusColor: config.Colors().mainDarkColor(1),
      hintColor: config.Colors().secondDarkColor(1),
      textTheme: TextTheme(
        button: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: config.Colors().mainDarkColor(1),
        ),
        headline5: TextStyle(
          fontSize: 16.0,
          color: config.Colors().accentDarkColor(1),
          fontFamily: "Proxima Nova",
        ),
        headline4: TextStyle(
            fontSize: 16,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: config.Colors().accentDarkColor(1)),
        headline3: const TextStyle(
            fontSize: 20,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline2: const TextStyle(
            fontSize: 24,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline1: TextStyle(
          fontFamily: 'Proxima Nova',
          color: config.Colors().accentDarkColor(1),
          fontSize: 50,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: config.Colors().secondDarkColor(1),
          fontFamily: "Roboto",
        ),
        headline6: TextStyle(
          fontSize: 14.0,
          color: config.Colors().accentDarkColor(.85),
          fontFamily: "Proxima Nova",
        ),
        bodyText2: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(.85),
        ),
        bodyText1: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(1),
        ),
        caption: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: config.Colors().accentDarkColor(1),
        ),
      ),
    ),
    AppThemes.KLightTheme2: ThemeData(
      canvasColor: Colors.transparent,
      primaryColor: const Color(0xFFF7F1E3),
      brightness: Brightness.light,
      errorColor: const Color(0xFFC19439),
      secondaryHeaderColor: const Color(0xFF96732C),
      focusColor: config.Colors().mainColor(1),
      hintColor: const Color(0xFFF1E6D0),
      textTheme: TextTheme(
        button: const TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: Color(0xFFFFFFFF),
        ),
        headline5: TextStyle(
          fontSize: 16.0,
          color: Colors.white.withOpacity(1),
          fontFamily: "Proxima Nova",
        ),
        headline4: TextStyle(
            fontSize: 16,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: config.Colors().accentColor(1)),
        headline3: const TextStyle(
            fontSize: 20,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.black),
        headline2: const TextStyle(
            fontSize: 24,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.black),
        headline1: TextStyle(
          fontFamily: 'Proxima Nova',
          color: config.Colors().accentColor(1),
          fontSize: 50,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: config.Colors().secondColor(1),
          fontFamily: "Roboto",
        ),
        headline6: TextStyle(
          fontSize: 13.0,
          color: Colors.white.withOpacity(.85),
          fontFamily: "Proxima Nova",
        ),
        bodyText2: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white.withOpacity(.75),
        ),
        bodyText1: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: Colors.white.withOpacity(1),
        ),
        caption: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: config.Colors().accentColor(1),
        ),
      ),
    ),
    AppThemes.KDarkTheme2: ThemeData(
      canvasColor: Colors.transparent,
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      secondaryHeaderColor: Colors.white,
      errorColor: Colors.black,
      focusColor: Colors.black,
      hintColor: Colors.black,
      textTheme: TextTheme(
        button: const TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: Colors.black,
        ),
        headline5: const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          fontFamily: "Proxima Nova",
        ),
        headline4: const TextStyle(
            fontSize: 16,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline3: const TextStyle(
            fontSize: 20,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline2: const TextStyle(
            fontSize: 24,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline1: const TextStyle(
          fontFamily: 'Proxima Nova',
          color: Colors.white,
          fontSize: 50,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: Colors.black,
          fontFamily: "Roboto",
        ),
        headline6: TextStyle(
          fontSize: 14.0,
          color: Colors.white.withOpacity(0.85),
          fontFamily: "Proxima Nova",
        ),
        bodyText2: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white.withOpacity(.85),
        ),
        bodyText1: const TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        caption: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    ),
    AppThemes.KLightTheme3: ThemeData(
      canvasColor: Colors.transparent,
      primaryColor: const Color(0xFFC5A79F),
      brightness: Brightness.light,
      errorColor: const Color(0xFFA7796D),
      secondaryHeaderColor: const Color(0xFF7D564B),
      focusColor: config.Colors().mainColor(1),
      hintColor: const Color(0xFFBE9C93),
      textTheme: TextTheme(
        button: const TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: Color(0xFFFFFFFF),
        ),
        headline5: TextStyle(
          fontSize: 16.0,
          color: Colors.white.withOpacity(1),
          fontFamily: "Proxima Nova",
        ),
        headline4: TextStyle(
            fontSize: 16,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: config.Colors().accentColor(1)),
        headline3: const TextStyle(
            fontSize: 20,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.black),
        headline2: const TextStyle(
            fontSize: 24,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.black),
        headline1: TextStyle(
          fontFamily: 'Proxima Nova',
          color: config.Colors().accentColor(1),
          fontSize: 50,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: config.Colors().secondColor(1),
          fontFamily: "Roboto",
        ),
        headline6: TextStyle(
          fontSize: 13.0,
          color: Colors.white.withOpacity(.85),
          fontFamily: "Proxima Nova",
        ),
        bodyText2: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white.withOpacity(.75),
        ),
        bodyText1: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: Colors.white.withOpacity(1),
        ),
        caption: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: config.Colors().accentColor(1),
        ),
      ),
    ),
    AppThemes.KLightTheme4: ThemeData(
      canvasColor: Colors.transparent,
      primaryColor: const Color(0xFF8399BE),
      brightness: Brightness.light,
      errorColor: const Color(0xFF596F95),
      secondaryHeaderColor: const Color(0xFF36435A),
      focusColor: config.Colors().mainColor(1),
      hintColor: const Color(0xFF788CAF),
      textTheme: TextTheme(
        button: const TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: Color(0xFFFFFFFF),
        ),
        headline5: TextStyle(
          fontSize: 16.0,
          color: Colors.white.withOpacity(1),
          fontFamily: "Proxima Nova",
        ),
        headline4: TextStyle(
            fontSize: 16,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: config.Colors().accentColor(1)),
        headline3: const TextStyle(
            fontSize: 20,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.black),
        headline2: const TextStyle(
            fontSize: 24,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.black),
        headline1: TextStyle(
          fontFamily: 'Proxima Nova',
          color: config.Colors().accentColor(1),
          fontSize: 50,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: config.Colors().secondColor(1),
          fontFamily: "Roboto",
        ),
        headline6: TextStyle(
          fontSize: 13.0,
          color: Colors.white.withOpacity(.85),
          fontFamily: "Proxima Nova",
        ),
        bodyText2: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white.withOpacity(.75),
        ),
        bodyText1: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: Colors.white.withOpacity(1),
        ),
        caption: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: config.Colors().accentColor(1),
        ),
      ),
    ),
    AppThemes.KDarkTheme3: ThemeData(
      canvasColor: Colors.transparent,
      primaryColor: const Color(0xFF202113),
      brightness: Brightness.dark,
      errorColor: const Color(0xFF767B45),
      secondaryHeaderColor: const Color(0xFFE3E4D0),
      focusColor: config.Colors().mainDarkColor(1),
      hintColor: const Color(0xFF35371F),
      textTheme: TextTheme(
        button: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: config.Colors().mainDarkColor(1),
        ),
        headline5: TextStyle(
          fontSize: 16.0,
          color: config.Colors().accentDarkColor(1),
          fontFamily: "Proxima Nova",
        ),
        headline4: TextStyle(
            fontSize: 16,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: config.Colors().accentDarkColor(1)),
        headline3: const TextStyle(
            fontSize: 20,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline2: const TextStyle(
            fontSize: 24,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline1: TextStyle(
          fontFamily: 'Proxima Nova',
          color: config.Colors().accentDarkColor(1),
          fontSize: 50,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: config.Colors().secondDarkColor(1),
          fontFamily: "Roboto",
        ),
        headline6: TextStyle(
          fontSize: 14.0,
          color: config.Colors().accentDarkColor(.85),
          fontFamily: "Proxima Nova",
        ),
        bodyText2: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(.85),
        ),
        bodyText1: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(1),
        ),
        caption: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: config.Colors().accentDarkColor(1),
        ),
      ),
    ),
    AppThemes.KDarkTheme4: ThemeData(
      canvasColor: Colors.transparent,
      primaryColor: const Color(0xFF041B29),
      brightness: Brightness.dark,
      errorColor: const Color(0xFF427DA8),
      secondaryHeaderColor: const Color(0xFFB0CCE0),
      focusColor: config.Colors().mainDarkColor(1),
      hintColor: const Color(0xFF152836),
      textTheme: TextTheme(
        button: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: config.Colors().mainDarkColor(1),
        ),
        headline5: TextStyle(
          fontSize: 16.0,
          color: config.Colors().accentDarkColor(1),
          fontFamily: "Proxima Nova",
        ),
        headline4: TextStyle(
            fontSize: 16,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: config.Colors().accentDarkColor(1)),
        headline3: const TextStyle(
            fontSize: 20,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline2: const TextStyle(
            fontSize: 24,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline1: TextStyle(
          fontFamily: 'Proxima Nova',
          color: config.Colors().accentDarkColor(1),
          fontSize: 50,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: config.Colors().secondDarkColor(1),
          fontFamily: "Roboto",
        ),
        headline6: TextStyle(
          fontSize: 14.0,
          color: config.Colors().accentDarkColor(.85),
          fontFamily: "Proxima Nova",
        ),
        bodyText2: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(.85),
        ),
        bodyText1: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(1),
        ),
        caption: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: config.Colors().accentDarkColor(1),
        ),
      ),
    ),
    AppThemes.KDarkTheme5: ThemeData(
      canvasColor: Colors.transparent,
      primaryColor: const Color(0xFF12210E),
      brightness: Brightness.dark,
      errorColor: const Color(0xFF4C7044),
      secondaryHeaderColor: const Color(0xFFD9E6D6),
      focusColor: config.Colors().mainDarkColor(1),
      hintColor: const Color(0xFF1D2B1A),
      textTheme: TextTheme(
        button: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: config.Colors().mainDarkColor(1),
        ),
        headline5: TextStyle(
          fontSize: 16.0,
          color: config.Colors().accentDarkColor(1),
          fontFamily: "Proxima Nova",
        ),
        headline4: TextStyle(
            fontSize: 16,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: config.Colors().accentDarkColor(1)),
        headline3: const TextStyle(
            fontSize: 20,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline2: const TextStyle(
            fontSize: 24,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline1: TextStyle(
          fontFamily: 'Proxima Nova',
          color: config.Colors().accentDarkColor(1),
          fontSize: 50,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: config.Colors().secondDarkColor(1),
          fontFamily: "Roboto",
        ),
        headline6: TextStyle(
          fontSize: 14.0,
          color: config.Colors().accentDarkColor(.85),
          fontFamily: "Proxima Nova",
        ),
        bodyText2: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(.85),
        ),
        bodyText1: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(1),
        ),
        caption: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: config.Colors().accentDarkColor(1),
        ),
      ),
    ),
    AppThemes.KDarkTheme6: ThemeData(
      canvasColor: Colors.transparent,
      primaryColor: const Color(0xFF290D02),
      brightness: Brightness.dark,
      errorColor: const Color(0xFF703826),
      secondaryHeaderColor: const Color(0xFFDFB0A0),
      focusColor: config.Colors().mainDarkColor(1),
      hintColor: const Color(0xFF361B12),
      textTheme: TextTheme(
        button: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: config.Colors().mainDarkColor(1),
        ),
        headline5: TextStyle(
          fontSize: 16.0,
          color: config.Colors().accentDarkColor(1),
          fontFamily: "Proxima Nova",
        ),
        headline4: TextStyle(
            fontSize: 16,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: config.Colors().accentDarkColor(1)),
        headline3: const TextStyle(
            fontSize: 20,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline2: const TextStyle(
            fontSize: 24,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline1: TextStyle(
          fontFamily: 'Proxima Nova',
          color: config.Colors().accentDarkColor(1),
          fontSize: 50,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: config.Colors().secondDarkColor(1),
          fontFamily: "Roboto",
        ),
        headline6: TextStyle(
          fontSize: 14.0,
          color: config.Colors().accentDarkColor(.85),
          fontFamily: "Proxima Nova",
        ),
        bodyText2: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(.85),
        ),
        bodyText1: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(1),
        ),
        caption: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: config.Colors().accentDarkColor(1),
        ),
      ),
    ),
    AppThemes.KDarkTheme7: ThemeData(
      canvasColor: Colors.transparent,
      primaryColor: const Color(0xFF142431),
      brightness: Brightness.dark,
      errorColor: const Color(0xFF2D6079),
      secondaryHeaderColor: const Color(0xFFA9CDDF),
      focusColor: config.Colors().mainDarkColor(1),
      hintColor: const Color(0xFF193543),
      textTheme: TextTheme(
        button: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: config.Colors().mainDarkColor(1),
        ),
        headline5: TextStyle(
          fontSize: 16.0,
          color: config.Colors().accentDarkColor(1),
          fontFamily: "Proxima Nova",
        ),
        headline4: TextStyle(
            fontSize: 16,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: config.Colors().accentDarkColor(1)),
        headline3: const TextStyle(
            fontSize: 20,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline2: const TextStyle(
            fontSize: 24,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline1: TextStyle(
          fontFamily: 'Proxima Nova',
          color: config.Colors().accentDarkColor(1),
          fontSize: 50,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: config.Colors().secondDarkColor(1),
          fontFamily: "Roboto",
        ),
        headline6: TextStyle(
          fontSize: 14.0,
          color: config.Colors().accentDarkColor(.85),
          fontFamily: "Proxima Nova",
        ),
        bodyText2: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(.85),
        ),
        bodyText1: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(1),
        ),
        caption: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: config.Colors().accentDarkColor(1),
        ),
      ),
    ),
    AppThemes.KDarkTheme8: ThemeData(
      canvasColor: Colors.transparent,
      primaryColor: const Color(0xFF393D46),
      brightness: Brightness.dark,
      errorColor: const Color(0xFF686E80),
      secondaryHeaderColor: const Color(0xFFEEEFF2),
      focusColor: config.Colors().mainDarkColor(1),
      hintColor: const Color(0xFF33363F),
      textTheme: TextTheme(
        button: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: config.Colors().mainDarkColor(1),
        ),
        headline5: TextStyle(
          fontSize: 16.0,
          color: config.Colors().accentDarkColor(1),
          fontFamily: "Proxima Nova",
        ),
        headline4: TextStyle(
            fontSize: 16,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: config.Colors().accentDarkColor(1)),
        headline3: const TextStyle(
            fontSize: 20,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline2: const TextStyle(
            fontSize: 24,
            fontFamily: "Proxima Nova",
            fontWeight: FontWeight.w500,
            color: Colors.white),
        headline1: TextStyle(
          fontFamily: 'Proxima Nova',
          color: config.Colors().accentDarkColor(1),
          fontSize: 50,
          fontWeight: FontWeight.w600,
        ),
        subtitle1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: config.Colors().secondDarkColor(1),
          fontFamily: "Roboto",
        ),
        headline6: TextStyle(
          fontSize: 14.0,
          color: config.Colors().accentDarkColor(.85),
          fontFamily: "Proxima Nova",
        ),
        bodyText2: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(.85),
        ),
        bodyText1: TextStyle(
          fontFamily: 'Proxima Nova',
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: config.Colors().accentDarkColor(1),
        ),
        caption: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: config.Colors().accentDarkColor(1),
        ),
      ),
    ),
  },
  fallbackTheme: ThemeData.light(),
);

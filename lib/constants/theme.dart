import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeClass {
  static ThemeData buildTheme(BuildContext context) {
    ThemeData themeData = ThemeData(
      primaryColor: const Color(0xFF7D23E0),
      cardColor: const Color(0xFFF6EFFE),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: const Color(0xffFFFFFF),
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        color: Color(0xFFffffff),
        iconTheme: IconThemeData(color: Color(0xFF7D23E0)),
        actionsIconTheme: IconThemeData(color: Color(0xFF7D23E0)),
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF7D23E0),
      ),
      cupertinoOverrideTheme:
      const CupertinoThemeData(brightness: Brightness.light),
      primaryTextTheme: GoogleFonts.promptTextTheme(Theme.of(context).textTheme).copyWith(
        headline1: GoogleFonts.prompt(
          color: Color(0xFF282828),
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
        headline2: GoogleFonts.prompt(
          color: const Color(0xFF000000),
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        headline3: GoogleFonts.prompt(
          color: const Color(0xFF787878),
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        headline4: GoogleFonts.prompt(
          color:Color(0xFF7D23E0) ,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        headline5: GoogleFonts.prompt(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
        headline6: GoogleFonts.prompt(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
        subtitle1: GoogleFonts.prompt(
          color: const Color(0xFF7D23E0),
          fontWeight: FontWeight.w600,
          fontSize: 10,
        ),
        subtitle2: GoogleFonts.prompt(
          color: const Color(0xFF414141),
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),


        caption: GoogleFonts.prompt(
          color: const Color(0xffFFFFFF),
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
        overline: GoogleFonts.prompt(
          color: const Color(0xffFFFFFF),
          fontWeight: FontWeight.normal,
        ),
        button: GoogleFonts.prompt(
          color: Color(0xff7D23E0),
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: 1,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(color: Color(0xFF7D23E0)),
        ),
      ),
    );
    return themeData;
  }
}

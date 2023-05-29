import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mytheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black), 
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
         titleTextStyle: Theme.of(context).textTheme.headline6,
      ));
  static ThemeData darktheme(BuildContext context) => ThemeData(
     
      );


    static Color creamcolor = Color(0xfff5f5f5);
    static Color darkbluishcolor = Color(0xff403b58);
}
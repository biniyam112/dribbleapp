import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

// for dark theme
ThemeData darkTheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
  scaffoldBackgroundColor: primaryColorDark,
  appBarTheme: AppBarTheme(
    backgroundColor: primaryColorDark,
    elevation: 0,
  ),
  textTheme: TextTheme().apply(
    displayColor: Colors.white,
    bodyColor: Colors.white,
  ),
);

// for light theme
ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: primaryColorLight,
  appBarTheme: AppBarTheme(
    backgroundColor: primaryColorLight,
    elevation: 0,
  ),
  fontFamily: GoogleFonts.poppins().fontFamily,
  textTheme: TextTheme().apply(
    displayColor: Colors.black87,
    bodyColor: Colors.black87,
  ),
);

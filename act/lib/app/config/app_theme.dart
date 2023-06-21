import 'package:act/app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
        displaySmall: GoogleFonts.londrinaSolid(),
        headlineSmall: GoogleFonts.londrinaSolid(),
        titleSmall: GoogleFonts.londrinaSolid(),
        bodyMedium: GoogleFonts.londrinaSolid(),
        bodySmall: GoogleFonts.londrinaSolid(),
        labelLarge: GoogleFonts.londrinaSolid()),
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors().primaryColor),
    useMaterial3: true,
  );

  ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
        displaySmall: GoogleFonts.londrinaSolid(),
        headlineSmall: GoogleFonts.londrinaSolid(),
        titleSmall: GoogleFonts.londrinaSolid(),
        bodyMedium:
            GoogleFonts.londrinaSolid(color: AppColors().primaryColorLighter),
        bodySmall: GoogleFonts.londrinaSolid(),
        labelLarge: GoogleFonts.londrinaSolid()),
    scaffoldBackgroundColor: Colors.black87,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors().primaryColor),
    useMaterial3: true,
  );
}

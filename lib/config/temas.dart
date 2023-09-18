import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const seedColor = Colors.red;

class AppTemas {
  ThemeData getTheme() => ThemeData(
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,
            backgroundColor: Colors.red,
            elevation: 5,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 25,
            )),
        useMaterial3: true,
        colorSchemeSeed: seedColor,
        listTileTheme: const ListTileThemeData(
          iconColor: seedColor,
        ),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.montserratAlternates(
              color: Colors.white, fontWeight: FontWeight.bold),
          titleMedium: GoogleFonts.russoOne(fontSize: 25),
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData themeData = ThemeData(
  //Material Design 3
  useMaterial3: true,

  //Tema de fontes
  textTheme: TextTheme(
    displayLarge: GoogleFonts.poppins(
      textStyle: const TextStyle(color: Color(0xffE6E1E5)),
      fontSize: 18,
      fontWeight: FontWeight.bold,
      //fontStyle: FontStyle.italic,
    ),
    displayMedium: GoogleFonts.poppins(
      textStyle: const TextStyle(color: Color(0xffE6E1E5)),
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: GoogleFonts.poppins(
      textStyle: const TextStyle(color: Color(0xffCABEC7)),
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  ),

  //Tema do IconButton
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all<Color>(const Color(0xff49454F)),
      backgroundColor:
          MaterialStateProperty.all<Color>(const Color(0xffD0BCFF)),
    ),
  ),

  //Tema do TextButton
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all<Color>(const Color(0xff49454F)),
      overlayColor: MaterialStateProperty.all<Color>(const Color(0xffD0BCFF)),
    ),
  ),

  cardTheme: CardTheme(
    color: const Color(0xff49454F),
    shadowColor: const Color(0xffD0BCFF),
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),

  //Tema de cores
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffD0BCFF),
    onPrimary: Color(0xffFAFAFB),
    secondary: Color(0xff49454F),
    onSecondary: Color(0xffFAFAFB),
    // tertiary: Color(0xff848FFF),
    error: Color.fromARGB(255, 186, 26, 26),
    onError: Color.fromARGB(255, 255, 218, 214),
    background: Color(0xff1C1B1F),
    onBackground: Color(0xff49454F),
    surface: Color(0xff49454F),
    onSurface: Color(0xffD0BCFF),
    //onSurfaceVariant: Color(0xffA3A3A3),
  ),
);

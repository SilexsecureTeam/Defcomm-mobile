import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static final systemUiOverlay = SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarContrastEnforced: false,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.black, // dark background
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryColor,
      surface: Colors.black,
      onSurface: Colors.white, // text color for dark mode
      secondary: Colors.white,
    ),
    primaryIconTheme: const IconThemeData(color: Colors.white),
    iconTheme: const IconThemeData(color: Colors.white),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: AppFonts.defaultFont,
      ),
    ),
    textTheme: buildTextTheme(ThemeData.dark().textTheme, Colors.white),
    primaryTextTheme: buildTextTheme(ThemeData.dark().textTheme, Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    ),
    listTileTheme: ListTileThemeData(
      titleTextStyle: TextStyle(
        fontFamily: AppFonts.defaultFont,
        color: Colors.white,
      ),
      subtitleTextStyle: TextStyle(
        color: Colors.grey[400],
        fontFamily: AppFonts.defaultFont,
      ),
      leadingAndTrailingTextStyle: TextStyle(
        color: Colors.white,
        fontFamily: AppFonts.defaultFont,
      ),
    ),
  );
}

TextTheme buildTextTheme(TextTheme base, Color fontColor) {
  return TextTheme(
    /// Body Text
    bodySmall: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.33,
      color: fontColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.43,
      color: fontColor,
    ),
    bodyLarge: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.9,
      color: fontColor,
      fontSize: 60,
    ),

    /// Label Text
    labelSmall: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.45,
      color: fontColor,
    ),
    labelMedium: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.33,
      color: fontColor,
    ),
    labelLarge: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.43,
      color: fontColor,
    ),

    /// Title Text
    titleSmall: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.43,
      color: fontColor,
    ),
    titleMedium: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.5,
      color: fontColor,
    ),
    titleLarge: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.27,
      color: fontColor,
    ),

    /// Headline Text
    headlineSmall: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.33,
      color: fontColor,
    ),
    headlineMedium: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.29,
      color: fontColor,
    ),
    headlineLarge: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.25,
      color: fontColor,
    ),

    /// Display Text
    displaySmall: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.22,
      color: fontColor,
    ),
    displayMedium: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.16,
      color: fontColor,
    ),
    displayLarge: TextStyle(
      fontFamily: AppFonts.defaultFont,
      height: 1.12,
      color: fontColor,
    ),
  );
}

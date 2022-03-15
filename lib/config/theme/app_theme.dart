import 'package:flutter/material.dart';

class AppThemeClass {
  static ThemeData appLightTheme = ThemeData(
    ////////////////////////////////////////////////////////////////////////
    ////// color scheme
    // colorScheme: lightColorScheme,
    // backgroundColor: const Color(0xffE5E5E5),
    // brightness: Brightness.light,

    ////////////////////////////////////////////////////////////////////////
    /// scaffold
    // scaffoldBackgroundColor: const Color(0xffE5E5E5),

    ////////////////////////////////////////////////////////////////////////
    ///text and font

    textTheme: TextTheme(
      headline1: const TextStyle(
        // color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.w800,
      ),
      headline2: TextStyle(
        color: Colors.black.withOpacity(0.5),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),

    ///
    /// ElevatedButtonTheme
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //     shape: MaterialStateProperty.all(
    //       const RoundedRectangleBorder(
    //         borderRadius: BorderRadius.all(
    //           Radius.circular(133),
    //         ),
    //       ),
    //     ),
    //   ),
    // ),

    ////
    //// CheckboxTheme
    // checkboxTheme: CheckboxThemeData(
    //   fillColor: MaterialStateProperty.all(AppColors.mainOrange),
    //   checkColor: MaterialStateProperty.all(Colors.white),
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(5),
    //   ),
    //   side: BorderSide(
    //     color: AppColors.mainOrange,
    //     width: 1,
    //   ),
    // ),

    ////
    ///bottom sheet theme
  );
}

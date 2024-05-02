import 'package:flutter/material.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'Tajawal',
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: MyColor.mainColor,
      actionsIconTheme: IconThemeData(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(38),
        ),
      ),
      foregroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: MyColor.backgroundLight,
    cardColor: MyColor.white,
    //Container color

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.white),
        // backgroundColor: MaterialStateProperty.all(MyColor.mainColor),
      ),
    ),
    useMaterial3: true,
  );
  static final ThemeData darkTheme = ThemeData(
    fontFamily: 'Tajawal',
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: MyColor.mainColor,
      iconTheme: IconThemeData(color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(38),
        ),
      ),
      foregroundColor: Colors.white,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        // textStyle: MaterialStateProperty.all(const TextStyle(color: Colors.white,fontFamily: 'Tajawal')),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
    ),
    scaffoldBackgroundColor: MyColor.backgroundDark,
    cardColor: MyColor.blueBayoux,
    useMaterial3: true,
  );
}

class MyColor {
  static const Color background = Color(0xffF5F6FA);

  static const Color white = Color(0xffFFFFFF);
  static const Color backgroundLight = Color(0xffF5F6FA);
  static const Color backgroundDark = Color(0xff222831);
  static const Color mainColor = Color(0xffFA7070);
  //FA7070
  // static const Color mainColor = Color(0xff8B80F8);

  static const Color colortext = Color(0xffD0D0FB);
  static const Color grey = Color(0xffF6F6F8);
  static const Color greyText = Color(0xff6A6A6A);
  static const Color formBox = Color(0xffF1F1F1);

  static const Color orange = Color(0xffF9763B);

  ///opacity 0.23
  static const Color yellow = Color(0xffFFC300);

  ///opacity 0.10
  static const Color blueBayoux = Color(0xff4C5A81);
  static const Color black = Color(0xff25232B);
  static const Color red = Color(0xffFF0031);
}

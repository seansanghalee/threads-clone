import 'package:flutter/material.dart';
import 'package:threads_clone/themes/bottom_app_bar_theme.dart';
import 'package:threads_clone/themes/light_mode/light_app_bar_theme.dart';
import 'package:threads_clone/themes/light_mode/light_text_theme.dart';

ThemeData lightThemeData = ThemeData(
  appBarTheme: lightAppBarTheme,
  scaffoldBackgroundColor: Colors.white,
  bottomAppBarTheme: bottomAppBarTheme,
  textTheme: lightTextTheme,
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  // dividerTheme: const DividerThemeData(
  //   thickness: 1,
  // ),
);

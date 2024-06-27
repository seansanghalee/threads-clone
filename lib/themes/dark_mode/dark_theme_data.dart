import 'package:flutter/material.dart';
import 'package:threads_clone/themes/bottom_app_bar_theme.dart';
import 'package:threads_clone/themes/dark_mode/dark_app_bar_theme.dart';
import 'package:threads_clone/themes/dark_mode/dark_text_theme.dart';

ThemeData darkThemeData = ThemeData(
  appBarTheme: darkAppBarTheme,
  scaffoldBackgroundColor: Colors.black,
  bottomAppBarTheme: bottomAppBarTheme,
  textTheme: darkTextTheme,
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  // dividerTheme: const DividerThemeData(
  //     thickness: 1,
  //     ),
);

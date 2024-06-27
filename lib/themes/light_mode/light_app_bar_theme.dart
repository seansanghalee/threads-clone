import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBarTheme lightAppBarTheme = const AppBarTheme(
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
  ),
  centerTitle: true,
  backgroundColor: Colors.transparent,
  iconTheme: IconThemeData(
      // size: 38,
      ),
  elevation: 0,
  scrolledUnderElevation: 0,
);

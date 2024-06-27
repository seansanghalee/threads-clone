import 'package:flutter/material.dart';

TextTheme lightTextTheme = TextTheme(
  // display
  displayLarge: const TextStyle(),
  displayMedium: const TextStyle(),
  displaySmall: const TextStyle(),

  // headline
  headlineLarge: const TextStyle(
    color: Colors.black,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  ),
  headlineMedium: const TextStyle(),
  headlineSmall: const TextStyle(),

  // title
  titleLarge: const TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w800,
  ),
  titleMedium: const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w800,
  ),
  titleSmall: const TextStyle(
    color: Colors.black,
    fontSize: 18,
  ),

  // body
  bodyLarge: const TextStyle(
    color: Colors.black,
    fontSize: 18,
  ),
  bodyMedium: const TextStyle(
    color: Colors.black,
    fontSize: 16,
  ),
  bodySmall: const TextStyle(
    color: Colors.black,
    fontSize: 12,
  ),

  // label
  labelLarge: TextStyle(
    color: Colors.black.withOpacity(0.7),
    fontSize: 16,
  ),
  labelMedium: TextStyle(
    color: Colors.black.withOpacity(0.7),
    fontSize: 14,
  ),
  labelSmall: TextStyle(
    color: Colors.black.withOpacity(0.7),
    fontSize: 12,
  ),
);

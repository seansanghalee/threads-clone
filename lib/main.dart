// import 'package:flutter/material.dart';
// import 'package:threads_clone/home_screen.dart';
// import 'package:threads_clone/themes/dark_mode/dark_theme_data.dart';
// import 'package:threads_clone/themes/light_mode/light_theme_data.dart';

// void main() {
//   runApp(const App());
// }

// class App extends StatelessWidget {
//   const App({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Threads Clone',
//       themeMode: ThemeMode.system,
//       theme: lightThemeData,
//       darkTheme: darkThemeData,
//       home: const HomeScreen(),
//     );
//   }
// }

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:threads_clone/features/home/home_screen.dart';
import 'package:threads_clone/themes/dark_mode/dark_theme_data.dart';
import 'package:threads_clone/themes/light_mode/light_theme_data.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Threads Clone',
      themeMode: ThemeMode.system,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      home: const HomeScreen(),
    );
  }
}

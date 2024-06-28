import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:threads_clone/features/settings/repos/settings_config_repo.dart';
import 'package:threads_clone/features/settings/view_models/settings_config_vm.dart';
import 'package:threads_clone/router.dart';

import 'package:threads_clone/themes/dark_mode/dark_theme_data.dart';
import 'package:threads_clone/themes/light_mode/light_theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final preferences = await SharedPreferences.getInstance();
  final repository = SettingsConfigRepository(preferences: preferences);

  runApp(
    ProviderScope(overrides: [
      settingsConfigProvider.overrideWith(
        () => SettingsConfigViewModel(repository),
      )
    ], child: const App()),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Threads Clone',
      themeMode: ref.watch(settingsConfigProvider).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: lightThemeData,
      darkTheme: darkThemeData,
    );
  }
}

// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:threads_clone/router.dart';
// import 'package:threads_clone/themes/dark_mode/dark_theme_data.dart';
// import 'package:threads_clone/themes/light_mode/light_theme_data.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context) => MultiProvider(
//         providers: const [],
//         child: const App(),
//       ),
//     ),
//   );
// }

// class App extends StatelessWidget {
//   const App({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerConfig: router,
//       locale: DevicePreview.locale(context),
//       builder: DevicePreview.appBuilder,
//       title: 'Threads Clone',
//       themeMode: ThemeMode.system,
//       theme: lightThemeData,
//       darkTheme: darkThemeData,
//     );
//   }
// }

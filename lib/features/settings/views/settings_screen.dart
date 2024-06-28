import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:threads_clone/features/settings/view_models/settings_config_vm.dart';

class SettingsScreen extends ConsumerWidget {
  static const String routeName = "settings";
  static const String routeUrl = "/settings";

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          SwitchListTile.adaptive(
            value: ref.watch(settingsConfigProvider).isDarkMode,
            onChanged: (value) {
              ref.read(settingsConfigProvider.notifier).setDarkMode(value);
            },
            title: const Text("Dark Mode"),
          ),
        ],
      ),
    );
  }
}

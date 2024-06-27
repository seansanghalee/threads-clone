import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = "settings";
  static const String routeUrl = "/settings";

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Settings"),
      ),
    );
  }
}

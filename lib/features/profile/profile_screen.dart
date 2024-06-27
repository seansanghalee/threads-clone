import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "profile";
  static const routeUrl = "/profile";

  const ProfileScreen({super.key});

  void onSettingsPressed(BuildContext context) {
    context.push("/settings");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Center(
            child: Text("Profile"),
          ),
          IconButton(
            onPressed: () => onSettingsPressed(context),
            icon: const FaIcon(FontAwesomeIcons.gear),
          ),
        ],
      ),
    );
  }
}

import 'package:go_router/go_router.dart';
import 'package:threads_clone/features/home/home_screen.dart';
import 'package:threads_clone/features/profile/profile_screen.dart';
import 'package:threads_clone/features/settings/settings_screen.dart';

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      name: HomeScreen.routeName,
      path: HomeScreen.routeUrl,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: ProfileScreen.routeName,
      path: ProfileScreen.routeUrl,
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      name: SettingsScreen.routeName,
      path: SettingsScreen.routeUrl,
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);

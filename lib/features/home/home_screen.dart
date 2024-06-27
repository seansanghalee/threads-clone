import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:threads_clone/constants/sizes.dart';

import 'package:threads_clone/features/home/navigation_bar_tab.dart';
import 'package:threads_clone/features/create_post/create_post_screen.dart';
import 'package:threads_clone/features/notifications/notifications_screen.dart';
import 'package:threads_clone/features/home/posts_screen.dart';
import 'package:threads_clone/features/profile/profile_screen.dart';
import 'package:threads_clone/features/search/search_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "home";
  static const routeUrl = "/";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onNavigationBarTabPressed(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onCreatePostButtonPressed(BuildContext context) {
    setState(() {
      _currentIndex = 0;
    });

    showModalBottomSheet(
      context: context,
      builder: (context) => const CreatePostScreen(),
      elevation: 0,
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FaIcon(
          FontAwesomeIcons.threads,
          size: mainIconSize,
        ),
      ),
      body: Stack(
        children: [
          Offstage(
            offstage: _currentIndex != 0,
            child: const PostsScreen(),
          ),
          Offstage(
            offstage: _currentIndex != 1,
            child: const SearchScreen(),
          ),
          Offstage(
            offstage: _currentIndex != 3,
            child: const NotificationsScreen(),
          ),
          Offstage(
            offstage: _currentIndex != 4,
            child: const ProfileScreen(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationBarTab(
              isSelected: _currentIndex == 0,
              selectedIcon: const FaIcon(FontAwesomeIcons.house),
              unselectedIcon: const FaIcon(FontAwesomeIcons.house),
              onPressed: () => _onNavigationBarTabPressed(0),
            ),
            NavigationBarTab(
              isSelected: _currentIndex == 1,
              selectedIcon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
              unselectedIcon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
              onPressed: () => _onNavigationBarTabPressed(1),
            ),
            NavigationBarTab(
              isSelected: false,
              selectedIcon: const FaIcon(FontAwesomeIcons.noteSticky),
              unselectedIcon: const FaIcon(FontAwesomeIcons.noteSticky),
              onPressed: () => _onCreatePostButtonPressed(context),
            ),
            NavigationBarTab(
              isSelected: _currentIndex == 3,
              selectedIcon: const FaIcon(FontAwesomeIcons.solidHeart),
              unselectedIcon: const FaIcon(FontAwesomeIcons.heart),
              onPressed: () => _onNavigationBarTabPressed(3),
            ),
            NavigationBarTab(
              isSelected: _currentIndex == 4,
              selectedIcon: const FaIcon(FontAwesomeIcons.solidUser),
              unselectedIcon: const FaIcon(FontAwesomeIcons.user),
              onPressed: () => _onNavigationBarTabPressed(4),
            )
          ],
        ),
      ),
    );
  }
}

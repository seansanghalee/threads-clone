import 'package:flutter/material.dart';

class NavigationBarTab extends StatelessWidget {
  final bool isSelected;
  final Widget selectedIcon;
  final Widget unselectedIcon;
  final Function onPressed;

  const NavigationBarTab({
    super.key,
    required this.isSelected,
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: isSelected ? selectedIcon : unselectedIcon,
      onPressed: () => onPressed(),
    );
  }
}

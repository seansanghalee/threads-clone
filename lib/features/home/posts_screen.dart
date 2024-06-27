import 'package:flutter/material.dart';
import 'package:threads_clone/constants/sizes.dart';
import 'package:threads_clone/features/home/post_widget.dart';
import 'package:threads_clone/more_actions_sheet.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onEllipsisPressed() {
      showModalBottomSheet(
        context: context,
        builder: (context) => const MoreActionsSheet(),
        elevation: 0,
        isScrollControlled: true,
        showDragHandle: true,
      );
    }

    return ListView.separated(
      itemBuilder: (context, index) => PostWidget(
        onEllipsisPressed: onEllipsisPressed,
      ),
      separatorBuilder: (context, index) => Divider(
        indent: horizontalPadding,
        endIndent: horizontalPadding,
      ),
      itemCount: 10,
    );
  }
}

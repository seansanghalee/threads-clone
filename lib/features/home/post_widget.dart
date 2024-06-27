import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:threads_clone/models/post.dart';
import 'package:threads_clone/common/user_avatar.dart';

class PostWidget extends StatelessWidget {
  final Post? post;
  final Function() onEllipsisPressed;

  const PostWidget({
    super.key,
    this.post,
    required this.onEllipsisPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.red,
                  padding: const EdgeInsets.all(12),
                  child: const Stack(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Text("P"),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          child: FaIcon(
                            FontAwesomeIcons.plus,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: VerticalDivider(
                    thickness: 10,
                    width: 10,
                    indent: 12,
                    endIndent: 12,
                    color: Colors.red,
                  ),
                ),
                Container(
                  color: Colors.red,
                  width: 50,
                  height: 50,
                  child: Stack(
                    children: [
                      const Positioned(
                        top: 0,
                        right: 0,
                        child: UserAvatar(),
                      ),
                      Positioned(
                        top: 10,
                        left: 0,
                        child: Transform.scale(
                          scale: 0.8,
                          child: const UserAvatar(),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 5,
                        child: Transform.scale(
                          scale: 0.5,
                          child: const UserAvatar(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "pubity",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Text(
                            "2m",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: onEllipsisPressed,
                      icon: const FaIcon(FontAwesomeIcons.ellipsis),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.heart),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.comment),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.retweet),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(FontAwesomeIcons.paperPlane),
                    ),
                  ],
                ),
                const Text("36 replies • 391 likes"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

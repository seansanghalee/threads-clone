import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:threads_clone/constants/sizes.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  void _onPostPressed() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.hardEdge,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: MediaQuery.of(context).size.width / 4,
          leading: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Cancel",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          title: const Text("New thread"),
          titleTextStyle: Theme.of(context).textTheme.titleMedium,
          centerTitle: true,
        ),
        body: Expanded(
          child: Column(
            children: [
              const Divider(),
              Gap(paddingSmall),
              IntrinsicHeight(
                child: Row(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(),
                          VerticalDivider(),
                          CircleAvatar(),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "jane_mobbin",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          TextField(
                            autofocus: true,
                            // expands: true,
                            // maxLines: null,
                            // minLines: null,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              hintText: "Start a thread...",
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    color: Colors.grey,
                                  ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.paperclip,
                              color: Colors.grey,
                              size: 18,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Positioned(
                    bottom: 0,
                    child: BottomAppBar(
                      padding: EdgeInsets.zero,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: horizontalPadding,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Anyone can reply",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                    color: Colors.grey,
                                  ),
                            ),
                            TextButton(
                              onPressed: _onPostPressed,
                              child: const Text("Post"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

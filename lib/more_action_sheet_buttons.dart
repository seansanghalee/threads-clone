import 'package:flutter/material.dart';
import 'package:threads_clone/constants/sizes.dart';

class MoreActionsSheetButtons extends StatelessWidget {
  final String topButtonText;
  final Function() topButtonAction;
  final String bottomButtonText;
  final Function() bottomButtonAction;

  const MoreActionsSheetButtons({
    super.key,
    required this.topButtonText,
    required this.topButtonAction,
    required this.bottomButtonText,
    required this.bottomButtonAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
            ),
            child: TextButton(
              onPressed: topButtonAction,
              child: Text(
                topButtonText,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: TextButton(
              onPressed: bottomButtonAction,
              child: Text(
                bottomButtonText,
                style: bottomButtonText == "Report"
                    ? Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.red,
                        )
                    : Theme.of(context).textTheme.titleSmall,
              ),
            ),
          )
        ],
      ),
    );
  }
}

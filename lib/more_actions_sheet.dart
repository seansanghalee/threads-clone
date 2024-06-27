import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:threads_clone/more_action_sheet_buttons.dart';
import 'package:threads_clone/report_bottom_sheet.dart';

class MoreActionsSheet extends StatelessWidget {
  const MoreActionsSheet({super.key});

  void _onReportPressed(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ReportBottomSheet(),
      elevation: 0,
      isScrollControlled: true,
      showDragHandle: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 24,
      ),
      height: MediaQuery.of(context).size.height * 0.3,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              MoreActionsSheetButtons(
                topButtonText: "Unfollow",
                topButtonAction: () {},
                bottomButtonText: "Mute",
                bottomButtonAction: () {},
              ),
              const Gap(12),
              MoreActionsSheetButtons(
                topButtonText: "Hide",
                topButtonAction: () {},
                bottomButtonText: "Report",
                bottomButtonAction: () => _onReportPressed(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

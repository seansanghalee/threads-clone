import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:threads_clone/constants/texts.dart';

class ReportBottomSheet extends StatelessWidget {
  const ReportBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 1,
          title: Text(
            "Report",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        // body: ListView.separated(
        //   itemBuilder: (context, index) => ListTile(
        //     title: Text(reportReasons[index]),
        //   ),
        //   separatorBuilder: (context, index) => const Divider(),
        //   itemCount: reportReasons.length,
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(reportTitle),
                subtitle: Text(reportDescription),
              ),
              for (var reportReason in reportReasons) ...[
                const Divider(),
                ListTile(
                  title: Text(reportReason),
                  trailing: IconButton(
                    icon: const FaIcon(FontAwesomeIcons.chevronRight),
                    onPressed: () {},
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

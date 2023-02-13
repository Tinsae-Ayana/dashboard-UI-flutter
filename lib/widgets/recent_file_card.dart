import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_panel_ui/constants.dart';
import 'package:responsive_admin_panel_ui/models/my_files.dart';
import 'package:responsive_admin_panel_ui/models/recent_file.dart';

class RecentFileCard extends StatefulWidget {
  const RecentFileCard({super.key});

  @override
  State<RecentFileCard> createState() => _RecentFileCardState();
}

class _RecentFileCardState extends State<RecentFileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recent Files', style: Theme.of(context).textTheme.subtitle1),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              horizontalMargin: 0,
              columns: const [
                DataColumn(
                  label: Text('File Name'),
                ),
                DataColumn(
                  label: Text('Date'),
                ),
                DataColumn(
                  label: Text('Size'),
                )
              ],
              rows: List.generate(demoRecentFiles.length,
                  (index) => recentDataRow(demoRecentFiles[index])),
            ),
          )
        ],
      ),
    );
  }

  DataRow recentDataRow(RecentFile info) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                info.icon!,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(info.title!),
              )
            ],
          ),
        ),
        DataCell(Text(info.date!)),
        DataCell(Text(info.size!))
      ],
    );
  }
}

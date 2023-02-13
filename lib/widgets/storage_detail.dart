import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_ui/constants.dart';
import 'package:responsive_admin_panel_ui/widgets/chart.dart';
import 'package:responsive_admin_panel_ui/widgets/storage_card.dart';

class StorageDetail extends StatelessWidget {
  const StorageDetail({
    Key? key,
  }) : super(key: key);

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
        children: const [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageCard(
            svgSrc: 'assets/icons/Documents.svg',
            title: 'Documents Files',
            amountOfFiles: '1.3Gn',
            numOfFiles: 1238,
          ),
          StorageCard(
            svgSrc: 'assets/icons/media.svg',
            title: 'Media Files',
            amountOfFiles: '1.3Gn',
            numOfFiles: 1238,
          ),
          StorageCard(
            svgSrc: 'assets/icons/folder.svg',
            title: 'Other Files',
            amountOfFiles: '1.3Gn',
            numOfFiles: 1238,
          ),
          StorageCard(
            svgSrc: 'assets/icons/unknown.svg',
            title: 'Unknown',
            amountOfFiles: '1.3Gn',
            numOfFiles: 1238,
          ),
        ],
      ),
    );
  }
}

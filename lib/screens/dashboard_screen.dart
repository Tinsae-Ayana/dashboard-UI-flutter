import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_ui/constants.dart';
import 'package:responsive_admin_panel_ui/models/my_files.dart';
import 'package:responsive_admin_panel_ui/responsive.dart';
import 'package:responsive_admin_panel_ui/widgets/file_info_card.dart';
import 'package:responsive_admin_panel_ui/widgets/header.dart';
import 'package:responsive_admin_panel_ui/widgets/my_files.dart';
import 'package:responsive_admin_panel_ui/widgets/recent_file_card.dart';
import 'package:responsive_admin_panel_ui/widgets/storage_detail.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        const MyFiles(),
                        const SizedBox(height: defaultPadding),
                        Responsive(
                          mobile: buildInfoCardList(
                              crossAxisCount: size.width < 650 ? 2 : 4,
                              aspectRatio: size.width < 650 ? 1.3 : 1),
                          desktop: buildInfoCardList(
                              aspectRatio: size.width < 1400 ? 1.1 : 1.4),
                          tablet: buildInfoCardList(),
                        ),
                        const SizedBox(height: defaultPadding),
                        const RecentFileCard(),
                        if (Responsive.isMobile(context))
                          const SizedBox(height: defaultPadding),
                        if (Responsive.isMobile(context)) const StorageDetail(),
                      ],
                    )),
                const SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: StorageDetail(),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }

  GridView buildInfoCardList({crossAxisCount = 4, aspectRatio = 1}) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) {
        return FileInfoCard(
          index: index,
        );
      },
    );
  }
}

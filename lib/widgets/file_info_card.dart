import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_panel_ui/constants.dart';
import 'package:responsive_admin_panel_ui/models/my_files.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    required this.index,
    Key? key,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: demoMyFiles[index].color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  demoMyFiles[index].svgSrc,
                  color: demoMyFiles[index].color,
                ),
              ),
              const Icon(Icons.more_vert, color: Colors.white54)
            ],
          ),
          Text(demoMyFiles[index].title,
              maxLines: 1, overflow: TextOverflow.ellipsis),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 5,
                decoration: BoxDecoration(
                  color: demoMyFiles[index].color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              LayoutBuilder(builder: (context, constraint) {
                return Container(
                  width: constraint.maxWidth * 0.5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: demoMyFiles[index].color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${demoMyFiles[index].numOfFiles} Files",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.white70),
              ),
              Text(
                demoMyFiles[index].totalStorage,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.white70),
              ),
            ],
          )
        ],
      ),
    );
  }
}

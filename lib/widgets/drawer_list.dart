import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({
    Key? key,
    required this.press,
    required this.svgPicture,
    required this.title,
  }) : super(key: key);

  final VoidCallback press;
  final String svgPicture;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      horizontalTitleGap: 0,
      leading: SvgPicture.asset(
        svgPicture,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}

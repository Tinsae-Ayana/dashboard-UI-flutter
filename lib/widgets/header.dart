import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_ui/responsive.dart';
import 'package:responsive_admin_panel_ui/widgets/profile_card.dart';
import 'package:responsive_admin_panel_ui/widgets/searchfield.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(
              Icons.menu,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        if (!Responsive.isMobile(context))
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const Expanded(
          child: SearchField(),
        ),
        const ProfileCard()
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_ui/widgets/drawer_list.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('assets/images/logo.png')),
            DrawerList(
                svgPicture: 'assets/icons/menu_dashbord.svg',
                press: () {},
                title: 'DashBoard'),
            DrawerList(
                svgPicture: 'assets/icons/menu_tran.svg',
                press: () {},
                title: 'Transaction'),
            DrawerList(
                svgPicture: 'assets/icons/menu_task.svg',
                press: () {},
                title: 'Task'),
            DrawerList(
                svgPicture: 'assets/icons/menu_doc.svg',
                press: () {},
                title: 'Documents'),
            DrawerList(
                svgPicture: 'assets/icons/menu_store.svg',
                press: () {},
                title: 'Store'),
            DrawerList(
                svgPicture: 'assets/icons/menu_notification.svg',
                press: () {},
                title: 'Notification'),
            DrawerList(
                svgPicture: 'assets/icons/menu_profile.svg',
                press: () {},
                title: 'Profile'),
            DrawerList(
                svgPicture: 'assets/icons/menu_setting.svg',
                press: () {},
                title: 'Settings'),
          ],
        ),
      ),
    );
  }
}

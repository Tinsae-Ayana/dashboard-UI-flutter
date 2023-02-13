import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_ui/responsive.dart';
import 'package:responsive_admin_panel_ui/screens/dashboard_screen.dart';
import 'package:responsive_admin_panel_ui/widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(child: SideMenu()),
            const Expanded(flex: 5, child: DashboardScreen()),
          ],
        ),
      ),
    );
  }
}

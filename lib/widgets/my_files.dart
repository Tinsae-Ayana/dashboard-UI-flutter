import 'package:flutter/material.dart';
import 'package:responsive_admin_panel_ui/constants.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('My Files', style: Theme.of(context).textTheme.subtitle1),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Add New'),
          style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5, vertical: defaultPadding)),
        )
      ],
    );
  }
}

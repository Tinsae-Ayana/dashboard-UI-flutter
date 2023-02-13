import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_panel_ui/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'search',
          fillColor: secondaryColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              padding: const EdgeInsets.all(defaultPadding * 0.75),
              decoration: const BoxDecoration(color: primaryColor),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
          )),
    );
  }
}

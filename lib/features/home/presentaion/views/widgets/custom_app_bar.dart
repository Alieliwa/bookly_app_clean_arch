import 'package:bookly_app_clean_arch/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .08,
        vertical: MediaQuery.of(context).size.height * .08,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: MediaQuery.of(context).size.height * .025,
          ),
          Spacer(),
          Icon(FontAwesomeIcons.magnifyingGlass),
        ],
      ),
    );
  }
}

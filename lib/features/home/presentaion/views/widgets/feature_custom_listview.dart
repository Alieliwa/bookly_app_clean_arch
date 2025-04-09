import 'package:bookly_app_clean_arch/features/home/presentaion/views/widgets/custom_list_view_image.dart';
import 'package:flutter/material.dart';

class FeatureCustomListView extends StatelessWidget {
  const FeatureCustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomFeatureItem(),
          );
        },
      ),
    );
  }
}

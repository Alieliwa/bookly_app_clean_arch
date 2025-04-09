import 'package:bookly_app_clean_arch/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly_app_clean_arch/features/home/presentaion/views/widgets/feature_custom_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBar(), FeatureCustomListView()]);
  }
}

import 'package:bookly_app_clean_arch/core/utils/styles.dart';
import 'package:bookly_app_clean_arch/features/home/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app_clean_arch/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly_app_clean_arch/features/home/presentaion/views/widgets/feature_custom_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureCustomListView(),
          SizedBox(height: 50),
          Text("Best Seller", style: Styles.textStyle18),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/widgets/custom_search_text_field.dart';
import 'package:fruits_app/features/home/presentation/widgets/best_selling_grid_view.dart';
import 'package:fruits_app/features/home/presentation/widgets/best_selling_header.dart';
import 'package:fruits_app/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:fruits_app/features/home/presentation/widgets/featured_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
              child: Column(
            children: [
              CustomHomeAppBar(),
              SizedBox(height: 16),
              CustomSearchTextField(),
              SizedBox(height: 12),
              FeaturedList(),
              SizedBox(height: 12),
              BestSellingHeader(),
              SizedBox(height: 8),
              
            ],
          )),
            BestSellingGridView()
        ],
      ),
    );
  }
}

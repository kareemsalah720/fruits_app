import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/cubits/cubit/products_cubit.dart';
import 'package:fruits_app/core/functions/custom_app_bar_function.dart';
import 'package:fruits_app/core/widgets/custom_search_text_field.dart';
import 'package:fruits_app/features/home/presentation/widgets/products_grid_view_bloc_builder.dart';
import 'package:fruits_app/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:fruits_app/features/home/presentation/widgets/products_view_header.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsCubit>().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: kTopPaddding,
                ),
                buildAppBar(
                  arrowBack: false,
                  context, title: 'المنتجات'
                  ),
                const SizedBox(
                  height: 16,
                ),
                const CustomSearchTextField(),
                const SizedBox(
                  height: 12,
                ),
                ProductsViewHeader(
                    productsLength:
                        context.read<ProductsCubit>().productsLength),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          const ProductsGridViewBlocBuilder()
        ],
      ),
    );
  }
}

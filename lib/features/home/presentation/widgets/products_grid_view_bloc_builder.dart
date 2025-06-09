import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/cubits/cubit/products_cubit.dart';
import 'package:fruits_app/core/functions/get_dummy_product.dart';
import 'package:fruits_app/core/widgets/custom_error_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'products_grid_view.dart';

class ProductsGridViewBlocBuilder extends StatelessWidget {
  const ProductsGridViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
           print("Products loaded: ${state.products.length}");
          return ProductsGridView(
            products: state.products,
          );
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorWidget(text: state.errMessage));
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: ProductsGridView(
              products: getDummyProducts(),
            ),
          );
        }
      },
    );
  }
}

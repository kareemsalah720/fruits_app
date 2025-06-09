import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/cubits/cubit/products_cubit.dart';
import 'package:fruits_app/core/repos/product_repo.dart';
import 'package:fruits_app/core/services/get_it_service.dart';
import 'package:fruits_app/features/home/presentation/widgets/products_view_body.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(
        getIt.get<ProductsRepo>(),
      ),
      child: const ProductsViewBody(),
    );
  }
}

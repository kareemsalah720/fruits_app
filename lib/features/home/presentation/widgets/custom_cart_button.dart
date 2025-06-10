import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/widgets/custom_button_widget.dart';
import 'package:fruits_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruits_app/features/home/presentation/cubits/cart_item_cubit/cart_item_cubit.dart';

class CustomCartButton extends StatelessWidget {
  const CustomCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemCubitState>(
      builder: (context, state) {
        return CustomButton(
          onPressed: () {},
          text:
              'الدفع  ${context.watch<CartCubit>().cartEntity.calculateTotalPrice()} جنيه',
        );
      },
    );
  }
}

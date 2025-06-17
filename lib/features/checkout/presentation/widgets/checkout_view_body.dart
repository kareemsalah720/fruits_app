import 'package:flutter/material.dart';
import 'package:fruits_app/features/checkout/presentation/widgets/checkout_steps.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          SizedBox(height: 20),
          CheckoutSteps(),
        ],
      ),
    );
  }
}

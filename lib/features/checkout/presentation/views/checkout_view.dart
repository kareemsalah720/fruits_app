import 'package:flutter/material.dart';
import 'package:fruits_app/features/checkout/presentation/widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});
  static const routeName = 'checkout';

  @override
  Widget build(BuildContext context) {
    return CheckoutViewBody();
  }
}
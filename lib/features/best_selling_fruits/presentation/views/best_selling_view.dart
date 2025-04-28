import 'package:flutter/material.dart';
import 'package:fruits_app/core/functions/custom_app_bar_function.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
   static const routeName = 'best_selling_view'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'الأكثر مبيعًا'),
      body: const Center(child: Text('BestSellingView')),
    );}
}
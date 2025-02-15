import 'package:flutter/material.dart';
import 'package:fruits_app/core/helper_functions/on_generate_routes.dart';
import 'package:fruits_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}

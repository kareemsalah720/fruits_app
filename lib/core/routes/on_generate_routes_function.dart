import 'package:flutter/material.dart';
import 'package:fruits_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:fruits_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:fruits_app/features/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:fruits_app/features/checkout/presentation/views/checkout_view.dart';
import 'package:fruits_app/features/home/presentation/views/main_view.dart';
import 'package:fruits_app/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:fruits_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());
    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellingView());  
    case CheckoutView.routeName:
      return MaterialPageRoute(builder: (context) => const CheckoutView());  

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
      
  }
}

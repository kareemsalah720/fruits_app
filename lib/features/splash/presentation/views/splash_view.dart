import 'package:flutter/material.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/services/firebase_auth.dart';
import 'package:fruits_app/core/services/shared_preferences_singleton.dart';
import 'package:fruits_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:fruits_app/features/home/presentation/views/home_view.dart';
import 'package:fruits_app/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:fruits_app/features/splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const routeName = 'SplashView';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    excuteNaviagtion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }

  void excuteNaviagtion() {
    bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingViewSeen) {
        var isLoggedIn = FirebaseAuthService().isLoggedIn();

        if (isLoggedIn) {
          Navigator.pushReplacementNamed(context, HomeView.routeName);
        } else {
          Navigator.pushReplacementNamed(context, SigninView.routeName);
        }
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}

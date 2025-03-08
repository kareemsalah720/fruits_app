import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_app/core/functions/on_generate_routes_function.dart';
import 'package:fruits_app/core/services/shared_preferences_singleton.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/features/splash/presentation/views/splash_view.dart';

import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar', 'EG'),
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}

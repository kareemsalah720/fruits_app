import 'package:flutter/material.dart';
import 'package:fruits_app/features/auth/presentation/widget/login_view_body.dart';
import '../../../../core/functions/custom_app_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = "LoginView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'تسجيل الدخول',
      ),
      body: SafeArea(child: LoginViewBody()),
    );
  }
}

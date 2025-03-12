import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/functions/custom_app_bar_function.dart';
import 'package:fruits_app/core/services/get_it_service.dart';
import 'package:fruits_app/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_app/features/auth/presentation/cubits/signup/signup_cubit.dart';
import 'package:fruits_app/features/auth/presentation/widget/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = 'signUpView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'حساب جديد'),
        body: SafeArea(child: SignUpViewBody()),
      ),
    );
  }
}

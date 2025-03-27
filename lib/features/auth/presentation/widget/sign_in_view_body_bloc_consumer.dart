import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/widgets/custom_modal_progress.dart';
import 'package:fruits_app/features/auth/presentation/cubits/signin/signin_cubit.dart';
import 'package:fruits_app/features/auth/presentation/widget/login_view_body.dart';

class SignInViewBodyBlocConsumer extends StatelessWidget {
  const SignInViewBodyBlocConsumer({
    super.key,  
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {},
      builder: (context, state) {
        return CustomModalProgress(
            isLoading: state is SigninLoading, child: const SignInViewBody());
      },
    );
  }
}

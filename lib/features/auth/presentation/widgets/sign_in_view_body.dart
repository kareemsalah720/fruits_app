import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/core/widgets/custom_button_widget.dart';
import 'package:fruits_app/core/widgets/custom_text_form_field_widget.dart';
import 'package:fruits_app/core/widgets/password_field.dart';
import 'package:fruits_app/features/auth/presentation/cubits/signin/signin_cubit.dart';
import 'package:fruits_app/features/auth/presentation/widgets/dont_have_an_account.dart';
import 'package:fruits_app/features/auth/presentation/widgets/or_divider.dart';
import 'package:fruits_app/features/auth/presentation/widgets/social_login_button.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  late String email, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الالكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 16,
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('نسيت كلمة المرور؟',
                      style: TextStyles.bold13.copyWith(
                        color: AppColors.lightprimaryColor,
                      )),
                ],
              ),
              SizedBox(
                height: 33,
              ),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context
                        .read<SigninCubit>()
                        .signInWithEmailAndPassword(email, password);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'تسجيل دخول',
              ),
              SizedBox(
                height: 33,
              ),
              DontHaveAnAccountWidget(),
              SizedBox(
                height: 37,
              ),
              OrDivider(),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                onPressed: () {
                  context.read<SigninCubit>().signinWithGoogle();
                },
                title: 'التسجيل بواسطة جوجل',
                image: Assets.imagesGoogleIcon,
              ),
              SizedBox(
                height: 16,
              ),
              Platform.isIOS
                  ? Column(
                      children: [
                        SocialLoginButton(
                          onPressed: () {},
                          title: 'التسجيل بواسطة أبل',
                          image: Assets.imagesApplIcon,
                        ),
                      ],
                    )
                  : SizedBox(),
              SocialLoginButton(
                onPressed: () {
                  context.read<SigninCubit>().signinWithFacebook();
                },
                title: 'التسجيل بواسطة فيسبوك',
                image: Assets.imagesFacebookIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

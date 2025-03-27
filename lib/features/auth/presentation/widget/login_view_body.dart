import 'package:flutter/material.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/core/widgets/custom_button_widget.dart';
import 'package:fruits_app/core/widgets/custom_text_form_field_widget.dart';
import 'package:fruits_app/features/auth/presentation/widget/dont_have_an_account.dart';
import 'package:fruits_app/features/auth/presentation/widget/or_divider.dart';
import 'package:fruits_app/features/auth/presentation/widget/social_login_button.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
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
              onPressed: () {},
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
              onPressed: () {},
              title: 'التسجيل بواسطة جوجل',
              image: Assets.imagesGoogleIcon,
            ),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              onPressed: () {},
              title: 'التسجيل بواسطة أبل',
              image: Assets.imagesApplIcon,
            ),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              onPressed: () {},
              title: 'التسجيل بواسطة فيسبوك',
              image: Assets.imagesFacebookIcon,
            ),
          ],
        ),
      ),
    );
  }
}

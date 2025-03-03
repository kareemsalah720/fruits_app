import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/widgets/custom_button.dart';
import 'package:fruits_app/features/on_boarding/presentation/widget/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(child: OnBoardingPageView()),
      DotsIndicator(
        dotsCount: 2,
        decorator: DotsDecorator(
          activeColor: AppColors.primaryColor,
          color: AppColors.primaryColor.withOpacity(0.5),
        ),
      ),
      SizedBox(
        height: 29,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: CustomButton(onPressed: () {}, text: 'ابدا الان'),
      ),
      SizedBox(
        height: 43,
      ),
    ]);
  }
}

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/services/shared_preferences_singleton.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/widgets/custom_button_widget.dart';
import 'package:fruits_app/features/auth/presentation/view/sign_in_view.dart';
import 'package:fruits_app/features/on_boarding/presentation/widget/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          child: OnBoardingPageView(
        pageController: pageController,
      )),
      DotsIndicator(
        dotsCount: 2,
        decorator: DotsDecorator(
          activeColor: AppColors.primaryColor,
          color: currentPage == 1
              ? AppColors.primaryColor
              : AppColors.primaryColor.withOpacity(0.5),
        ),
      ),
      SizedBox(
        height: 29,
      ),
      Visibility(
        visible: currentPage == 1 ? true : false,
        maintainAnimation: true,
        maintainSize: true,
        maintainState: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CustomButton(
              onPressed: () {
                  Prefs.setBool(kIsOnBoardingViewSeen, true);
                Navigator.of(context).popAndPushNamed(SigninView.routeName);
              },
              text: 'ابدا الان'),
        ),
      ),
      SizedBox(
        height: 43,
      ),
    ]);
  }
}

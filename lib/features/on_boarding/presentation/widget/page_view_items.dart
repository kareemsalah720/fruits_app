import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/services/shared_preferences_singleton.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/features/auth/presentation/views/sign_in_view.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subtitle,
    required this.isVisble,
  });
  final String image, backgroundImage;
  final Widget title;
  final String subtitle;
  final bool isVisble;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                  visible: isVisble,
                  child: GestureDetector(
                    onTap: () {
                      Prefs.setBool(kIsOnBoardingViewSeen, true);
                      Navigator.of(context)
                          .popAndPushNamed(SigninView.routeName);
                    },
                    child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'تخط',
                          style: TextStyles.regular13
                              .copyWith(color: Color(0xFF949D9E)),
                        )),
                  )),
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(subtitle,
              style: TextStyles.bold13.copyWith(color: Color(0xFF4E5556)),
              textAlign: TextAlign.center),
        ),
      ],
    );
  }
}

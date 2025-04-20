import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.image,
      required this.title,
      required this.onPressed});
  final String image;
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          style: TextButton.styleFrom(
            side: const BorderSide(color: Color(0xFFDCDEDE), width: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: onPressed,
          child: ListTile(
            visualDensity: const VisualDensity(
              vertical: VisualDensity.minimumDensity,
            ),
            leading: SvgPicture.asset(image),
            title: Text(
              textAlign: TextAlign.center,
              title,
              style: TextStyles.semiBold16.copyWith(
                color: Colors.black,
              ),
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/widgets/custom_text_form_field_widget.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
          CustomTextFormFieldWidget(
              hintText: 'الاسم كامل', keyboardType: TextInputType.name),
          SizedBox(height: 16),
          CustomTextFormFieldWidget(
              hintText: 'البريد الالكتروني', keyboardType: TextInputType.emailAddress),
              SizedBox(height: 16),
          CustomTextFormFieldWidget(
              hintText: 'كلمة المرور', keyboardType: TextInputType.visiblePassword, suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF),)),
              SizedBox(height: 16),
        ],
      )),
    );
  }
}

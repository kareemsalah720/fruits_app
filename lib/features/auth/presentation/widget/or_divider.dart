import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFfDCDcDE),
          ),
        ),
        SizedBox(
          width: 50,
          child: Text(
            'أو',
            textAlign: TextAlign.center,
            style: TextStyles.semiBold16
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xFfDCDcDE),
          ),
        ),
      ],
    );
  }
}

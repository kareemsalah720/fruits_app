import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/core/widgets/notification_widget.dart';

AppBar buildAppBar(context, {required String title,bool arrowBack = true,bool showNotification = true}) {
  return AppBar(
    actions: [Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Visibility(
        visible: showNotification,
        child: NotificationWidget()),
    )],
    backgroundColor: Colors.white,
    leading: Visibility(
      visible: arrowBack,
      child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new)),
    ),
    centerTitle: true,
    title: Text(title, textAlign: TextAlign.center, style: TextStyles.bold19),
  );
}

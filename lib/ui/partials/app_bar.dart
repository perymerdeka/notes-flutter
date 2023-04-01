import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notesapps/services/notification_service.dart';
import 'package:notesapps/services/themes_service.dart';

var notifyHelper = NotifyHelper();

AppBar appBar() {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        ThemeService().switchTheme();
        notifyHelper.displayNotification(title: "Theme Changed", body: Get.isDarkMode ? "Activated Dark Theme": "Activate Light Theme");
      },
      child: const Icon(
        Icons.nightlight_round,
        size: 20,
      ),
    ),
    actions: const [
      Icon(
        Icons.person,
        size: 20,
      ),
      SizedBox(
        width: 20,
      )
    ],
  );
}

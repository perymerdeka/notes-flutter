import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notesapps/services/notification_service.dart';
import 'package:notesapps/services/themes_service.dart';

var notifyHelper = NotifyHelper();

AppBar appBar() {
  return AppBar(
    elevation: 0,
    leading: GestureDetector(
      onTap: () {
        ThemeService().switchTheme();
        notifyHelper.displayNotification(
            title: "Theme Changed",
            body: Get.isDarkMode
                ? "Activated Light Theme"
                : "Activate Dark Theme");
      },
      child: Icon(
          Get.isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight_round_outlined,
          size: 20,
          color: Get.isDarkMode ? Colors.white : Colors.black),
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

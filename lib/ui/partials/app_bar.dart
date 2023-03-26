import 'package:flutter/material.dart';
import 'package:notesapps/services/themes_services.dart';

AppBar appBar() {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        ThemeService().switchTheme();
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

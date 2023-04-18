import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notesapps/services/notification_service.dart';
import 'package:notesapps/ui/partials/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  // initialize notifications

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late NotifyHelper notifyHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(DateFormat.yMMMMd().format(DateTime.now())),
                      const Text("Today")
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}

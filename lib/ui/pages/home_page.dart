import 'package:flutter/material.dart';
import 'package:notesapps/ui/partials/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Column(
          children: const [
            Text(
              "Flutter Theme Data",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ));
  }
}

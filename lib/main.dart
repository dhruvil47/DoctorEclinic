import 'package:flutter/material.dart';

import 'package:my_app/mainscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        iconTheme: IconThemeData(
          color: Colors.white30,
        ),
      ),
      home: Scaffold(
        body: WhatsappWeb(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_vlog_app/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage()
    );
  }
}

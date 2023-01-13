import 'package:education_app/screens/home_page.dart';
import 'package:education_app/screens/onboard_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EducationApp());
}

class EducationApp extends StatelessWidget {
  const EducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

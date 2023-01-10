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
      home: Scaffold(
        body: OnboardPage(),
      ),
    );
  }
}

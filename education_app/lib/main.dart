import 'package:education_app/screens/home_page.dart';
import 'package:education_app/screens/onboard_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(EducationApp());
}

class EducationApp extends StatelessWidget {
  const EducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Education App",
      theme: ThemeData(
        
        useMaterial3: true,
        textTheme: GoogleFonts.nunitoSansTextTheme()
        
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: OnboardPage(),
      ),
    );
  }
}

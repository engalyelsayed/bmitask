// ignore_for_file: file_names

import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        
      ),debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
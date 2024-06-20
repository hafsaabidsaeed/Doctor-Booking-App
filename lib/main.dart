
import 'package:doctor_app/screens/home_screen.dart';
import 'package:doctor_app/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Booking App',
      theme: const AppTheme().themeData,
      home: HomeScreen() ,
    );
  }
}

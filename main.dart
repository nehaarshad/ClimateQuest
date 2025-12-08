import 'package:climatequest/splashView.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const ClimateQuestApp());
}

class ClimateQuestApp extends StatelessWidget {
  const ClimateQuestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClimateQuest',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          primary: Colors.blue
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
        fontFamily: 'Roboto',
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}



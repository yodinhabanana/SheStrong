import 'package:flutter/material.dart';
import 'welcome.dart';

void main() {
  runApp(const SheStrongApp());
}

class SheStrongApp extends StatelessWidget {
  const SheStrongApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SheStrong',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const WelcomeScreen(), // your home screen
    );
  }
}

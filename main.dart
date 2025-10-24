import 'package:flutter/material.dart';
import 'home.dart'; // your HomeScreen file

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
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomeScreen(), // your home screen
    );
  }
}

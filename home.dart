import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SheStrong'), // app name
        centerTitle: true,
        backgroundColor: Colors.pinkAccent, // theme color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome to SheStrong!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to workout plans
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text('Start Workout', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to progress screen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent.shade100,
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text('View Progress', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

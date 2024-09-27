import 'package:flutter/material.dart';
import 'main.dart'; // Assuming MyHomePage is in main.dart
import 'home.dart'; // Update with the correct path

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add an image or icon
            Image.asset('assets/images/1.jpg',
                height: 200), // Update with your image path
            const SizedBox(height: 20), // Space between image and text
            const Text(
              'Welcome to Health Solution',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 10), // Space between title and subtitle
            Text(
              'Your journey to a healthier life starts here.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 40), // Space before button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const MyHomePage(title: 'Health Solution Home Page'),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent, // Button color
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'on_board_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToOnBoardScreen();
  }

  _navigateToOnBoardScreen() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnBoardScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo
            Image.asset(
              'assets/images/logo.png',
              height: 150.0,
            ),
            const SizedBox(height: 20.0),
            // Loading Indicator
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

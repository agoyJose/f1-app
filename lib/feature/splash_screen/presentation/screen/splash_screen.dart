import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red[900],
      body: Center(
        child: Image.asset('assets/icon/f1-logo.png'), ),
    );
  }
}

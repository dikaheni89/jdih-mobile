import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jdihmobile/screen/mainscreen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10),
          () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Lottie.asset(
              'assets/splash/eclipse.json',
              fit: BoxFit.cover,
              width: 400,
              height: 400,
              repeat: true,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/image/logo.png',
              width: 200,
              height: 120,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:jdihmobile/screen/homescreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/image/bg.png',
              fit: BoxFit.cover,
              width: 300,
              height: 300,
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

          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 16),
                minimumSize: const Size(200, 50),
                padding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                foregroundColor: Colors.white,
                backgroundColor: Colors.green, // Set the text color here
              ),
              onPressed: () {
                Navigator.push( // Use Navigator.push to navigate to the NextScreen
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text('Masuk'),
            ),
          ),
        ],
      ),
    );
  }
}
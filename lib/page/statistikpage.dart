import 'package:flutter/material.dart';

class StatistikPage extends StatefulWidget {
  const StatistikPage({super.key});

  @override
  State<StatistikPage> createState() => _StatistikPageState();
}

class _StatistikPageState extends State<StatistikPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/image/logo.png',
          fit: BoxFit.contain,
          height: 48,
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(16),
          child: Container(),
        ),
      ),
    );
  }
}
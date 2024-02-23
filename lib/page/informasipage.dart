import 'package:flutter/material.dart';

class InformasiPage extends StatefulWidget {
  const InformasiPage({super.key});

  @override
  State<InformasiPage> createState() => _InformasiPageState();
}

class _InformasiPageState extends State<InformasiPage> {
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
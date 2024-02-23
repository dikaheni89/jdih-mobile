import 'package:flutter/material.dart';

class ListPeraturan extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  const ListPeraturan({super.key, required this.title, required this.subtitle, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/image/icon1.png',
                  fit: BoxFit.contain,
                  height: 48,
                ),
              ),
            ],
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class EmptyStatePage extends StatelessWidget {
  const EmptyStatePage({
    Key? key,
    required this.emoji,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String emoji;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          Text(
            emoji,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 150,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}

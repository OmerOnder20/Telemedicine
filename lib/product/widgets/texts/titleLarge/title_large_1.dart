import 'package:flutter/material.dart';

class TitleLarge1 extends StatelessWidget {
  final String text;
  final Color color;
  const TitleLarge1({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
          color: color, letterSpacing: 1, fontWeight: FontWeight.w700),
    );
  }
}

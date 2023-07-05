import 'package:flutter/material.dart';

class HeadlineSmall1 extends StatelessWidget {
  final String text;
  final Color color;
  const HeadlineSmall1({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: color, fontWeight: FontWeight.w800),
    );
  }
}

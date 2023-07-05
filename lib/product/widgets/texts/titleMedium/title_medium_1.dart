import 'package:flutter/material.dart';

class TitleMedium1 extends StatelessWidget {
  final String text;
  final Color color;
  const TitleMedium1({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: color, fontWeight: FontWeight.w500),
    );
  }
}

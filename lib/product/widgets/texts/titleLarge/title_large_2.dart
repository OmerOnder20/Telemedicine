import 'package:flutter/material.dart';

class TitleLarge2 extends StatelessWidget {
  final String text;
  final Color color;
  const TitleLarge2({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(color: color, fontWeight: FontWeight.w600),
    );
  }
}

import 'package:flutter/material.dart';

class TitleLarge3 extends StatelessWidget {
  final String text;
  final Color color;
  const TitleLarge3({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(color: color, fontWeight: FontWeight.w400),
    );
  }
}

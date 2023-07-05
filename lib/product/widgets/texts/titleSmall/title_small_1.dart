import 'package:flutter/material.dart';

class TitleSmall1 extends StatelessWidget {
  final String text;
  final Color color;
  const TitleSmall1({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleSmall
          ?.copyWith(color: color, fontWeight: FontWeight.w400),
    );
  }
}

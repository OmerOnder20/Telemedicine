import 'package:flutter/material.dart';

class LabelSmall2 extends StatelessWidget {
  final String text;
  final Color color;
  const LabelSmall2({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context)
          .textTheme
          .labelMedium
          ?.copyWith(color: color, fontWeight: FontWeight.w500),
    );
  }
}

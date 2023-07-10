import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utility/sizes.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color color;
  const CustomElevatedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: WidgetSizes.customElevatedButtonHeight,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r))),
            onPressed: onPressed,
            child: Text(
              text,
            )));
  }
}

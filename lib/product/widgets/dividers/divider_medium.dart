import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utility/color_utility.dart';

class DividerMedium extends StatelessWidget {
  const DividerMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.h,
      width: 100.w,
      color: ColorUtility.scaffoldBackgroundColor,
    );
  }
}

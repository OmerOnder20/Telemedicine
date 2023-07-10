import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utility/color_utility.dart';

class DividerSmall extends StatelessWidget {
  const DividerSmall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.h,
      width: double.infinity,
      color: ColorUtility.scaffoldBackgroundColor,
    );
  }
}

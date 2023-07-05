import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/assets_constants.dart';

class PopButton extends StatelessWidget {
  const PopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.pop();
      },
      child: SvgPicture.asset(
        AssetConstants.leftArrowSvg,
        height: 18.h,
        width: 22.w,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/product/utility/color_utility.dart';

import '../../constants/assets_constants.dart';

class PopButton extends StatelessWidget {
  final Color? color;
  const PopButton({
    Key? key,
    this.color = ColorUtility.textColorGrey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        context.router.pop();
      },
      child: SvgPicture.asset(
        AssetConstants.leftArrowSvg,
        height: 18.h,
        width: 22.w,
        fit: BoxFit.scaleDown,
        color: color,
      ),
    );
  }
}

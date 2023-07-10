import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../product/utility/color_utility.dart';
import '../../../product/utility/sizes.dart';
import '../../../product/widgets/texts/labelMedium.dart/label_medium_1.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: WidgetSizes.categoruListBuilderHeight,
      width: WidgetSizes.categoruListBuilderWidth,
      child: Card(
        margin: EdgeInsets.only(bottom: 2.h),
        color: ColorUtility.colorWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/svg/pediatrician.svg",
                height: 35.h,
                width: 25.w,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 6),
                child: LabelMedium1(
                  text: "Pediatrician",
                  color: ColorUtility.textColorGrey,
                ),
              )
            ]),
      ),
    );
  }
}

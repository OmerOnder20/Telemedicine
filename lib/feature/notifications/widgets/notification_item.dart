import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../product/constants/assets_constants.dart';
import '../../../product/utility/color_utility.dart';
import '../../../product/utility/spacer_utility.dart';
import '../../../product/utility/sizes.dart';
import '../../../product/widgets/texts/labelSmall/label_small_1.dart';
import '../../../product/widgets/texts/titleMedium/title_medium_1.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: WidgetSizes.notificationItemHeight,
      width: double.infinity,
      color: ColorUtility.colorWhite,
      child: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 30.w),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                      color:
                          Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                              .withOpacity(1.0),
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Center(
                    child: SvgPicture.asset(
                      AssetConstants.bellSvg,
                      width: 17.w,
                      height: 17.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, top: 30.h),
                child: SizedBox(
                  height: WidgetSizes.notificationItemTextHeight,
                  width: WidgetSizes.notificationItemTextWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const TitleMedium1(
                        text: "Remind For Serial ",
                        color: ColorUtility.textColorGrey,
                      ),
                      SpacerUtility.small,
                      Padding(
                        padding: EdgeInsets.only(right: 12.w),
                        child: const LabelSmall1(
                          text:
                              "It is a long established fact that a reader and will be distracted.",
                          color: ColorUtility.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: const Align(
                  alignment: Alignment.topRight,
                  child: LabelSmall1(
                    text: "11 Min",
                    color: ColorUtility.textColorGrey,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

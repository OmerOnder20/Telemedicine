import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/product/utility/sizes.dart';

import '../../../product/utility/color_utility.dart';
import '../../../product/widgets/texts/labelSmall/label_small_1.dart';
import '../../../product/widgets/texts/labelMedium.dart/label_medium_1.dart';
import '../../../product/widgets/texts/titleSmall/title_small_2.dart';

class HomeCardItem extends StatelessWidget {
  final void Function()? onTap;
  const HomeCardItem({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SizedBox(
            height: WidgetSizes.homePageBuilderCardHeight,
            width: WidgetSizes.homePageBuilderCardWidth,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    "assets/jpg/home_page_item.jpg",
                    height: WidgetSizes.homePageBuilderCardHeight,
                    width: WidgetSizes.homePageBuilderCardWidth,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.h, left: 15.w, right: 130.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: TitleSmall2(
                            text: "Looking For Your Desire Specialist Doctor ?",
                            color: ColorUtility.colorWhite),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 28.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height:
                                  WidgetSizes.homePageBuilderCarDividerHeight,
                              width: WidgetSizes.homePageBuilderCarDividerWidth,
                              decoration: BoxDecoration(
                                  color: ColorUtility.dividerGreen,
                                  borderRadius: BorderRadius.circular(10.r)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.w),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  LabelMedium1(
                                    text: "Dr.Salina Zaman",
                                    color: ColorUtility.colorWhite,
                                  ),
                                  LabelSmall1(
                                      text: "Medicine & Heart Spelist",
                                      color: ColorUtility.colorWhite),
                                  LabelSmall1(
                                      text: "Good Health Clinic",
                                      color: ColorUtility.colorWhite),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

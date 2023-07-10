// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/product/widgets/texts/titleMedium/title_medium_1.dart';

import '../../../product/utility/color_utility.dart';
import '../../../product/utility/sizes.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function() onTap;
  const MenuItem({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: ColorUtility.colorWhite,
        height: WidgetSizes.menuItemHeight,
        width: double.infinity,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 32.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: WidgetSizes.menuContainerHeight,
                      width: WidgetSizes.menuContainerWidth,
                      decoration: const BoxDecoration(
                          color: ColorUtility.textColorLightBlue,
                          shape: BoxShape.circle),
                      child: Center(
                        child: Icon(
                          icon,
                          color: ColorUtility.colorWhite,
                          size: 24.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: TitleMedium1(
                        text: text,
                        color: ColorUtility.textColorGrey,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Icon(
                  Icons.chevron_right_outlined,
                  color: ColorUtility.textColorGrey,
                  size: 30.h,
                ),
              )
            ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/product/constants/assets_constants.dart';

import '../../../product/utility/colors/color_utility.dart';
import '../../../product/utility/spacer/spacer_utility.dart';
import '../../../product/widgets/texts/headlineSmall/headline_small_1.dart';
import '../../../product/widgets/texts/titleLarge/title_large_3.dart';

class CustomRow extends StatelessWidget {
  final String text1;
  final String text2;

  const CustomRow({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SpacerUtility.largeX,
            TitleLarge3(text: text1, color: ColorUtility.textColorGrey),
            SpacerUtility.small,
            HeadlineSmall1(text: text2, color: ColorUtility.textColorGrey)
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 72.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 30.w),
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    AssetConstants.homeSearchSvg,
                    height: 22.h,
                    width: 22.w,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  AssetConstants.homeChatSvg,
                  height: 22.h,
                  width: 22.w,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../product/utility/color_utility.dart';
import '../../../product/utility/spacer_utility.dart';
import '../../../product/utility/sizes.dart';
import '../../../product/widgets/texts/labelMedium.dart/label_medium_2.dart';
import '../../../product/widgets/texts/titleSmall/title_small_2.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final String textInside;
  const ProfileItem({super.key, required this.title, required this.textInside});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: LabelMedium2(
            text: title,
            color: ColorUtility.textColorGrey,
          ),
        ),
        SpacerUtility.small,
        SizedBox(
          height: WidgetSizes.profileItemHeight,
          width: double.infinity,
          child: Card(
            elevation: 0,
            color: ColorUtility.colorWhite,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: TitleSmall2(
                    text: textInside, color: ColorUtility.textColorGrey),
              ),
            ),
          ),
        )
      ],
    );
  }
}

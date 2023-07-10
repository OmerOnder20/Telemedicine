import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../product/constants/string_constants.dart';
import '../../../product/utility/color_utility.dart';
import '../../../product/widgets/buttons/pop_button.dart';
import '../../../product/widgets/texts/labelMedium.dart/label_medium_1.dart';
import '../../../product/widgets/texts/titleLarge/title_large_2.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const PopButton(color: ColorUtility.colorWhite),
        const TitleLarge2(
            text: StringConstants.profile, color: ColorUtility.colorWhite),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 4.w),
              child: Icon(
                Icons.edit,
                color: ColorUtility.colorWhite,
                size: 22.h,
              ),
            ),
            const LabelMedium1(
              text: StringConstants.edit,
              color: ColorUtility.colorWhite,
            ),
          ],
        )
      ],
    );
  }
}

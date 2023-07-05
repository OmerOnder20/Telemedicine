import 'package:flutter/material.dart';

import '../../../product/constants/string_constants.dart';
import '../../../product/utility/colors/color_utility.dart';
import '../../../product/widgets/texts/titleMedium/title_medium_1.dart';
import '../../../product/widgets/texts/titleSmall/title_small_2.dart';

class HomeCategoryRow extends StatelessWidget {
  const HomeCategoryRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TitleMedium1(
          text: StringConstants.categories,
          color: ColorUtility.textColorGrey,
        ),
        InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {},
            child: const TitleSmall2(
                text: StringConstants.seeAll,
                color: ColorUtility.textColorGrey))
      ],
    );
  }
}

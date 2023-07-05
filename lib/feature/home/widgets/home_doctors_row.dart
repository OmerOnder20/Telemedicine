import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../product/constants/string_constants.dart';
import '../../../product/navigator/app_router.dart';
import '../../../product/utility/colors/color_utility.dart';
import '../../../product/widgets/texts/titleMedium/title_medium_1.dart';
import '../../../product/widgets/texts/titleSmall/title_small_2.dart';

class HomeDoctorsRow extends StatelessWidget {
  const HomeDoctorsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TitleMedium1(
          text: StringConstants.availableDoctor,
          color: ColorUtility.textColorGrey,
        ),
        InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              context.router.navigate(const AllDoctorsRoute());
            },
            child: const TitleSmall2(
                text: StringConstants.seeAll,
                color: ColorUtility.textColorGrey))
      ],
    );
  }
}

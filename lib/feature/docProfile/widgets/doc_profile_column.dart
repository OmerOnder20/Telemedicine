import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/product/navigator/app_router.dart';

import '../../../product/constants/string_constants.dart';
import '../../../product/utility/color_utility.dart';
import '../../../product/utility/spacer_utility.dart';
import '../../../product/widgets/buttons/custom_elevated_button.dart';
import '../../../product/widgets/texts/labelMedium.dart/label_medium_2.dart';
import '../../../product/widgets/texts/labelMedium.dart/label_medium_3.dart';
import '../../../product/widgets/texts/labelSmall/label_small_1.dart';
import '../../../product/widgets/texts/titleLarge/title_large_2.dart';
import '../../../product/widgets/texts/titleMedium/title_medium_1.dart';

class DocProfileColumn extends StatelessWidget {
  const DocProfileColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const TitleLarge2(
          text: "Medicine & Heart Spelist",
          color: ColorUtility.textColorGrey,
        ),
        SpacerUtility.smallX,
        const LabelMedium2(
          text: "Good Health Clinic, MBBS, FCPS",
          color: ColorUtility.textColorGrey,
        ),
        SpacerUtility.smallXXX,
        const TitleMedium1(
          text: "About Serena",
          color: ColorUtility.textColorGrey,
        ),
        SpacerUtility.smallX,
        const Flexible(
          child: LabelMedium3(
              text:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
              color: ColorUtility.textColorGrey),
        ),
        SpacerUtility.smallXX,
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LabelSmall1(
                    text: StringConstants.patients,
                    color: ColorUtility.textColorGrey),
                TitleLarge2(
                  text: "1.08K",
                  color: ColorUtility.textColorGrey,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LabelSmall1(
                    text: StringConstants.experience,
                    color: ColorUtility.textColorGrey),
                TitleLarge2(
                  text: "1.08K",
                  color: ColorUtility.textColorGrey,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LabelSmall1(
                    text: StringConstants.review,
                    color: ColorUtility.textColorGrey),
                TitleLarge2(
                  text: "2.05K",
                  color: ColorUtility.textColorGrey,
                ),
              ],
            )
          ],
        ),
        SpacerUtility.smallXX,
        CustomElevatedButton(
            text: StringConstants.bookAn,
            onPressed: () {
              context.router.push(const AppointmentRoute());
            },
            color: ColorUtility.textColorDarkBlue)
      ],
    );
  }
}

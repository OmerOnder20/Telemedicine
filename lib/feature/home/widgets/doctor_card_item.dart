import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/product/utility/spacer_utility.dart';

import '../../../product/constants/string_constants.dart';
import '../../../product/utility/color_utility.dart';
import '../../../product/utility/sizes.dart';
import '../../../product/widgets/texts/labelSmall/label_small_1.dart';
import '../../../product/widgets/texts/labelMedium.dart/label_medium_1.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: WidgetSizes.doctorListBuilderHeight,
      width: WidgetSizes.doctorListBuilderWidth,
      child: Card(
        elevation: 4,
        color: ColorUtility.colorWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(children: [
          const Align(
            alignment: Alignment.bottomRight,
            child: DoctorImage(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const LabelMedium1(
                  text: "Kate Adams",
                  color: ColorUtility.textColorGrey,
                ),
                Text(
                  "Pediatrician Specialist",
                  style: TextStyle(
                    color: ColorUtility.textColorGrey,
                    fontSize: 11.sp,
                  ),
                ),
                SpacerUtility.small,
                const LabelSmall1(
                  text: StringConstants.experience,
                  color: ColorUtility.textColorGrey,
                ),
                const LabelMedium1(
                  text: "8 Years",
                  color: ColorUtility.textColorGrey,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class DoctorImage extends StatelessWidget {
  const DoctorImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: Image.asset(
        "assets/png/doctors.png",
        height: WidgetSizes.doctorCardHeight,
        width: WidgetSizes.doctorCardWidth,
        fit: BoxFit.contain,
      ),
    );
  }
}

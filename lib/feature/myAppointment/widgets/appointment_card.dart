import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/product/constants/string_constants.dart';
import 'package:flutter_ui/product/utility/color_utility.dart';
import 'package:flutter_ui/product/widgets/dividers/divider_medium.dart';
import 'package:flutter_ui/product/widgets/texts/labelSmall/label_small_2.dart';

import '../../../product/utility/sizes.dart';
import '../../../product/widgets/texts/labelSmall/label_small_1.dart';

class AppointmentCard extends StatelessWidget {
  final String buttonText;
  final Color color;
  const AppointmentCard(
      {super.key, required this.buttonText, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: WidgetSizes.appointmentCardHeight,
      width: double.infinity,
      child: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        color: ColorUtility.colorWhite,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 14.h, left: 19.w),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LabelSmall1(
                              text: StringConstants.date,
                              color: ColorUtility.textColorGrey),
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: LabelSmall2(
                                text: "01 January 2020",
                                color: ColorUtility.textColorGrey),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19.w),
                      child: const DividerMedium(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 14.h, left: 19.w),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 4),
                            child: LabelSmall1(
                                text: StringConstants.appointmentType,
                                color: ColorUtility.textColorGrey),
                          ),
                          LabelSmall2(
                              text: "Dentiest",
                              color: ColorUtility.textColorGrey),
                        ],
                      ),
                    ),
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 14.h),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LabelSmall1(
                              text: StringConstants.time,
                              color: ColorUtility.textColorGrey),
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: LabelSmall2(
                                text: "2.20 Pm",
                                color: ColorUtility.textColorGrey),
                          ),
                        ],
                      ),
                    ),
                    const DividerMedium(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 14.h),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 4),
                            child: LabelSmall1(
                                text: StringConstants.place,
                                color: ColorUtility.textColorGrey),
                          ),
                          LabelSmall2(
                              text: "New Town Clinic",
                              color: ColorUtility.textColorGrey),
                        ],
                      ),
                    ),
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 14.h, right: 19.w),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LabelSmall1(
                              text: StringConstants.doctor,
                              color: ColorUtility.textColorGrey),
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: LabelSmall2(
                                text: "Kate Adams",
                                color: ColorUtility.textColorGrey),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 14.h, right: 10.w),
                      child: SizedBox(
                        height: WidgetSizes.appointmentCardButtonHeight,
                        width: WidgetSizes.appointmentCardButtonWidth,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.r)),
                                backgroundColor: color,
                                padding: EdgeInsets.zero),
                            onPressed: () {},
                            child: LabelSmall2(
                              text: buttonText,
                              color: ColorUtility.colorWhite,
                            )),
                      ),
                    )
                  ]),
            ]),
      ),
    );
  }
}

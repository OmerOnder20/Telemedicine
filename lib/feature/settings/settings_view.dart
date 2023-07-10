import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/product/constants/string_constants.dart';

import '../../product/constants/assets_constants.dart';
import '../../product/utility/color_utility.dart';
import '../../product/utility/spacer_utility.dart';
import '../../product/utility/sizes.dart';
import '../../product/widgets/appbar/custom_app_bar.dart';
import '../../product/widgets/texts/titleMedium/title_medium_1.dart';

@RoutePage()
class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: StringConstants.settings),
      body: Column(children: [
        SpacerUtility.smallX,
        Container(
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
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: Color((Random().nextDouble() * 0xFFFFFF)
                                        .toInt() <<
                                    0)
                                .withOpacity(1.0),
                            borderRadius: BorderRadius.circular(5.r)),
                        child: Center(
                          child: SvgPicture.asset(
                            AssetConstants.bellSvg,
                            width: 17.w,
                            height: 17.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: const TitleMedium1(
                          text: StringConstants.notification,
                          color: ColorUtility.textColorGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Switch(
                    activeColor: ColorUtility.textColorDarkBlue,
                    inactiveTrackColor: ColorUtility.switchGreyColor,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    activeTrackColor: ColorUtility.textColorDarkBlue,
                    thumbColor:
                        MaterialStateProperty.all(ColorUtility.colorWhite),
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value; // Değişikliği burada kaydedin
                      });
                    },
                  ),
                )
              ]),
        ),
      ]),
    );
  }
}

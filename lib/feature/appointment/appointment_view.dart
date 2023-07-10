// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/feature/appointment/widgets/date_picker_appointment.dart';

import 'package:flutter_ui/product/utility/color_utility.dart';
import 'package:flutter_ui/product/utility/spacer_utility.dart';
import 'package:flutter_ui/product/utility/sizes.dart';

import '../../product/constants/string_constants.dart';
import '../../product/widgets/appbar/custom_app_bar.dart';
import '../../product/widgets/texts/titleLarge/title_large_2.dart';
import '../../product/widgets/texts/titleMedium/title_medium_1.dart';

@RoutePage()
class AppointmentView extends StatefulWidget {
  const AppointmentView({super.key});

  @override
  State<AppointmentView> createState() => _AppointmentViewState();
}

class _AppointmentViewState extends State<AppointmentView> {
  final DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: AppointmentButton(
          onPressed: () {},
        ),
      ),
      appBar: const CustomAppBar(text: StringConstants.appointment),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SpacerUtility.smallX,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: const DateText(),
          ),
          SpacerUtility.smallX,
          DatePickerAppointment(
            onDateChange: (selectedDate) {
              setState(() {
                selectedDate = _selectedValue;
              });
            },
          ),
          SpacerUtility.smallX,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: const TimeText(),
          ),
          SpacerUtility.smallX,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: const AppointmentGridViewBuilder(),
          ),
        ]),
      ),
    );
  }
}

class TimeText extends StatelessWidget {
  const TimeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TitleLarge2(
        text: StringConstants.appointmentTime,
        color: ColorUtility.textColorGrey);
  }
}

class DateText extends StatelessWidget {
  const DateText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TitleLarge2(
        text: StringConstants.appointmentDate,
        color: ColorUtility.textColorGrey);
  }
}

class AppointmentGridViewBuilder extends StatelessWidget {
  const AppointmentGridViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20.h,
        crossAxisSpacing: 15.w,
        childAspectRatio: 3,
      ),
      itemCount: 40,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Card(
            margin: EdgeInsets.zero,
            color: ColorUtility.colorWhite,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Center(
              child: TitleMedium1(
                text:
                    "${Random().nextInt(24).toString()}:${Random().nextInt(59).toString()}",
                color: ColorUtility.textColorGrey,
              ),
            ),
          ),
        );
      },
    );
  }
}

class AppointmentButton extends StatelessWidget {
  final void Function()? onPressed;
  const AppointmentButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: WidgetSizes.customElevatedButtonHeight,
      width: double.infinity,
      child: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        backgroundColor: ColorUtility.textColorDarkBlue,
        onPressed: onPressed,
        label: const Text(StringConstants.confirmAppointment),
      ),
    );
  }
}

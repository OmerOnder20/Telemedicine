import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../product/utility/color_utility.dart';
import '../../../product/utility/sizes.dart';

class DatePickerAppointment extends StatelessWidget {
  final void Function(DateTime)? onDateChange;
  const DatePickerAppointment({
    Key? key,
    this.onDateChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: WidgetSizes.datePickerHeight,
      width: double.infinity,
      color: ColorUtility.colorWhite,
      child: DatePicker(
        DateTime.now(),
        dateTextStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20.sp,
            color: ColorUtility.textColorGrey),
        monthTextStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: ColorUtility.textColorGrey),
        dayTextStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: ColorUtility.textColorGrey),
        initialSelectedDate: DateTime.now(),
        selectionColor: ColorUtility.textColorDarkBlue,
        selectedTextColor: ColorUtility.colorWhite,
        onDateChange: onDateChange,
      ),
    );
  }
}

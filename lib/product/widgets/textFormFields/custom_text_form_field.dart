import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/product/utility/color_utility.dart';
import 'package:flutter_ui/product/utility/spacer_utility.dart';

import '../../utility/sizes.dart';
import '../texts/titleSmall/title_small_2.dart';

class CustomTextFormField extends StatelessWidget {
  final String infoText;
  final TextEditingController controller;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    required this.infoText,
    required this.controller,
    required this.textInputType,
    required this.validator,
    this.inputFormatters,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TitleSmall2(
          text: infoText,
          color: ColorUtility.textColorGreyDark,
        ),
        SpacerUtility.small,
        SizedBox(
            height: WidgetSizes.customFormFieldHeight,
            width: double.infinity,
            child: TextFormField(
                obscureText: obscureText,
                inputFormatters: inputFormatters,
                cursorColor: Colors.black,
                validator: validator,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: controller,
                textInputAction: TextInputAction.next,
                keyboardType: textInputType,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: ColorUtility.textColorLightGrey,
                    fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 0, bottom: 0, left: 20.w),
                  filled: true,
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.red, width: 0.5.w)),
                  fillColor: ColorUtility.colorWhite,
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                          BorderSide(color: Colors.green, width: 0.5.w)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                          color: ColorUtility.textColorLightBlue,
                          width: 0.5.w)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                          color: ColorUtility.textColorGreyDark, width: 0.5.w)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                          color: ColorUtility.textColorLightBlue,
                          width: 0.5.w)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                          color: ColorUtility.textColorLightBlue,
                          width: 0.5.w)),
                ))),
      ],
    );
  }
}

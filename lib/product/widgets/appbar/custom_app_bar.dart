import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/product/utility/color_utility.dart';
import 'package:flutter_ui/product/utility/sizes.dart';
import 'package:flutter_ui/product/widgets/buttons/pop_button.dart';

import '../texts/titleLarge/title_large_2.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const CustomAppBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorUtility.colorWhite,
      elevation: 0,
      toolbarHeight: WidgetSizes.customAppBarHeight,
      leading: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: const PopButton(),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: TitleLarge2(
          text: text,
          color: ColorUtility.textColorGrey,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(WidgetSizes.customAppBarHeight);
}

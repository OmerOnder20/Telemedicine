import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/feature/menu/widgets/menu_item.dart';
import 'package:flutter_ui/product/navigator/app_router.dart';
import 'package:flutter_ui/product/utility/spacer_utility.dart';
import 'package:flutter_ui/product/widgets/dividers/divider_small.dart';

import '../../product/constants/string_constants.dart';
import '../../product/utility/color_utility.dart';
import '../../product/utility/sizes.dart';
import '../../product/widgets/texts/titleLarge/title_large_2.dart';

@RoutePage()
class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorUtility.colorWhite,
          toolbarHeight: WidgetSizes.notificationAppBarHeight,
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: const TitleLarge2(
                text: StringConstants.menu, color: ColorUtility.textColorGrey),
          )),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SpacerUtility.medium,
            MenuItem(
              onTap: () {
                context.router.push(const MyAppointmentRoute());
              },
              text: StringConstants.myAppointment,
              icon: Icons.date_range_outlined,
            ),
            const DividerSmall(),
            MenuItem(
              onTap: () {
                context.router.push(const ProfileRoute());
              },
              text: StringConstants.profile,
              icon: Icons.person,
            ),
            const DividerSmall(),
            MenuItem(
              onTap: () {
                context.router.push(const SettingsRoute());
              },
              text: StringConstants.settings,
              icon: Icons.settings,
            ),
            const DividerSmall(),
            MenuItem(
              onTap: () {},
              text: StringConstants.logOut,
              icon: Icons.exit_to_app_outlined,
            ),
          ]),
    );
  }
}

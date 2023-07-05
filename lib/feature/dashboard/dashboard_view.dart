import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/product/navigator/app_router.dart';
import 'package:flutter_ui/product/utility/colors/color_utility.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../product/constants/string_constants.dart';

@RoutePage()
class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      physics: const NeverScrollableScrollPhysics(),
      animatePageTransition: false,
      routes: const [
        HomeRoute(),
        AllDoctorsRoute(),
        NotificationsRoute(),
        MenuRoute()
      ],
      builder: (context, child, tabController) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: child,
          bottomNavigationBar: Material(
            elevation: 4,
            child: Container(
              color: ColorUtility.colorWhite,
              child: Padding(
                padding: EdgeInsets.only(
                    right: 25.w, left: 25.w, bottom: 18.h, top: 12.h),
                child: GNav(
                    haptic: true,
                    selectedIndex: tabsRouter.activeIndex,
                    onTabChange: tabsRouter.setActiveIndex,
                    gap: 7.w,
                    iconSize: 26.h,
                    textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: ColorUtility.colorWhite,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w400),
                    padding: EdgeInsets.all(10.h),
                    backgroundColor: ColorUtility.colorWhite,
                    color: ColorUtility.colorBlack,
                    activeColor: ColorUtility.colorWhite,
                    tabBackgroundColor: ColorUtility.textColorDarkBlue,
                    tabs: const [
                      GButton(
                          icon: Icons.home_outlined,
                          text: StringConstants.home),
                      GButton(
                          icon: Icons.health_and_safety_outlined,
                          text: StringConstants.doctors),
                      GButton(
                          icon: Icons.notifications_none_outlined,
                          text: StringConstants.notification),
                      GButton(
                          icon: Icons.menu_outlined, text: StringConstants.menu)
                    ]),
              ),
            ),
          ),
        );
      },
    );
  }
}

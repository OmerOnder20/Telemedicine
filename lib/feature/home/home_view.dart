import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/feature/home/widgets/category_card_item.dart';
import 'package:flutter_ui/feature/home/widgets/doctor_card_item.dart';
import 'package:flutter_ui/feature/home/widgets/home_card_item.dart';
import 'package:flutter_ui/feature/home/widgets/home_category_row.dart';
import 'package:flutter_ui/feature/home/widgets/home_doctors_row.dart';
import 'package:flutter_ui/product/navigator/app_router.dart';
import 'package:flutter_ui/product/utility/colors/color_utility.dart';
import 'package:flutter_ui/product/utility/spacer/spacer_utility.dart';
import 'package:flutter_ui/product/utility/widgetSizes/sizes.dart';

import '../../product/constants/string_constants.dart';
import '../../product/widgets/items/custom_row.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController pageController =
      PageController(viewportFraction: 0.85, initialPage: 5);

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: WidgetSizes.homeContainerHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorUtility.colorWhite,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 28.w, right: 30.w),
                  child: const CustomRow(
                      text1: StringConstants.findYour,
                      text2: StringConstants.specialist),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.h),
                  child: HomePageBuilder(pageController: pageController),
                ),
              ],
            ),
          ),
          SpacerUtility.smallXXX,
          Padding(
            padding: EdgeInsets.only(right: 25.w, left: 16.w),
            child: const HomeCategoryRow(),
          ),
          SpacerUtility.smallXX,
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: const CategoryListViewBuilder(),
          ),
          SpacerUtility.smallXXX,
          Padding(
            padding: EdgeInsets.only(right: 25.w, left: 16.w),
            child: const HomeDoctorsRow(),
          ),
          SpacerUtility.smallX,
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: const DoctorListViewBuilder(),
          ),
        ]),
      ),
    );
  }
}

class DoctorListViewBuilder extends StatelessWidget {
  const DoctorListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: WidgetSizes.doctorListBuilderHeight,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 15.w,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                context.router.push(const DocProfileRoute());
              },
              child: const DoctorCard());
        },
      ),
    );
  }
}

class CategoryListViewBuilder extends StatelessWidget {
  const CategoryListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: WidgetSizes.categoruListBuilderHeight,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 10.w,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: const CategoryCardItem(),
          );
        },
      ),
    );
  }
}

class HomePageBuilder extends StatelessWidget {
  const HomePageBuilder({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: WidgetSizes.homePageBuilderHeight,
      width: double.infinity,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 11,
        controller: pageController,
        itemBuilder: (context, index) {
          return const HomeCardItem();
        },
      ),
    );
  }
}

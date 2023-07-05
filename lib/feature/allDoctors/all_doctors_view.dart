import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/feature/home/widgets/doctor_card_item.dart';
import 'package:flutter_ui/product/navigator/app_router.dart';
import 'package:flutter_ui/product/utility/colors/color_utility.dart';
import 'package:flutter_ui/product/widgets/items/custom_row.dart';

import '../../product/constants/string_constants.dart';
import '../../product/utility/widgetSizes/sizes.dart';

@RoutePage()
class AllDoctorsView extends StatefulWidget {
  const AllDoctorsView({super.key});

  @override
  State<AllDoctorsView> createState() => _AllDoctorsViewState();
}

class _AllDoctorsViewState extends State<AllDoctorsView>
    with TickerProviderStateMixin {
  //Burası servisten gelecek.
  final List<String> alanAdi = [
    "Pediatrician",
    "Neurosurgeon",
    "Cardiologist",
    "Psychiatrist",
    "Anatomy"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: alanAdi.length,
        child: Scaffold(
          body: Column(children: [
            Container(
              color: ColorUtility.colorWhite,
              height: WidgetSizes.doctorsContainerHeight,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 28.w, right: 20.w),
                child: const CustomRow(
                    text1: StringConstants.available,
                    text2: StringConstants.specialist),
              ),
            ),
            Container(
              color: ColorUtility.colorWhite,
              child: TabBar(
                labelColor: ColorUtility.textColorGrey,
                unselectedLabelColor: ColorUtility.textColorGreyDark,
                indicatorWeight: 2.5,
                indicatorColor: ColorUtility.textColorDarkBlue,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 15.w),
                isScrollable: true,
                tabs: alanAdi.map((String ad) {
                  return Tab(
                    child: Text(ad),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: alanAdi.map((String ad) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15.w,
                          mainAxisSpacing: 15.h,
                          childAspectRatio: 1),
                      itemCount:
                          10, // Her bir alana ait doktor sayısı (örneğin, 10)
                      itemBuilder: (BuildContext context, int index) {
                        // Burada her bir doktor kartını oluşturun
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
                }).toList(),
              ),
            ),
          ]),
        ));
  }
}

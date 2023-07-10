import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/product/constants/string_constants.dart';
import 'package:flutter_ui/product/widgets/appbar/custom_app_bar.dart';

import '../../product/utility/color_utility.dart';
import '../../product/utility/spacer_utility.dart';
import 'widgets/appointment_card.dart';

@RoutePage()
class MyAppointmentView extends StatefulWidget {
  const MyAppointmentView({super.key});

  @override
  State<MyAppointmentView> createState() => _MyAppointmentViewState();
}

class _MyAppointmentViewState extends State<MyAppointmentView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const CustomAppBar(
          text: StringConstants.myAppointment,
        ),
        body: Column(children: [
          Container(
            color: ColorUtility.colorWhite,
            child: const TabBar(
                labelColor: ColorUtility.textColorGrey,
                unselectedLabelColor: ColorUtility.textColorGreyDark,
                indicatorWeight: 2.5,
                indicatorColor: ColorUtility.textColorDarkBlue,
                tabs: [
                  Tab(
                    child: Text(StringConstants.upcoming),
                  ),
                  Tab(
                    child: Text(StringConstants.past),
                  )
                ]),
          ),
          SpacerUtility.smallX,
          const Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                UpcomingListBuilder(),
                PastListBuilder(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class PastListBuilder extends StatelessWidget {
  const PastListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (BuildContext context, int index) {
        return SpacerUtility.smallX;
      },
      itemBuilder: (BuildContext context, int index) {
        return const AppointmentCard(
          buttonText: StringConstants.reschedule,
          color: ColorUtility.textColorDarkBlue,
        );
      },
    );
  }
}

class UpcomingListBuilder extends StatelessWidget {
  const UpcomingListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (BuildContext context, int index) {
        return SpacerUtility.smallX;
      },
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: const AppointmentCard(
            buttonText: StringConstants.cancel,
            color: ColorUtility.colorRed,
          ),
        );
      },
    );
  }
}

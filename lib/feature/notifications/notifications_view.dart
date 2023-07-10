import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/feature/notifications/widgets/notification_item.dart';
import 'package:flutter_ui/product/constants/string_constants.dart';
import 'package:flutter_ui/product/utility/color_utility.dart';
import 'package:flutter_ui/product/utility/spacer_utility.dart';
import 'package:flutter_ui/product/utility/sizes.dart';

import '../../product/widgets/dividers/divider_small.dart';
import '../../product/widgets/texts/titleLarge/title_large_2.dart';

@RoutePage()
class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
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
                text: StringConstants.notification,
                color: ColorUtility.textColorGrey),
          )),
      body: Column(children: [
        SpacerUtility.smallX,
        const Expanded(
          child: NotificationListViewBuilder(),
        )
      ]),
    );
  }
}

class NotificationListViewBuilder extends StatelessWidget {
  const NotificationListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      separatorBuilder: (BuildContext context, int index) {
        return const DividerSmall();
      },
      itemBuilder: (BuildContext context, int index) {
        return const NotificationItem();
      },
    );
  }
}

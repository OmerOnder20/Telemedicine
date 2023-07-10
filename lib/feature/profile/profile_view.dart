import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/feature/profile/widgets/profile_item.dart';
import 'package:flutter_ui/feature/profile/widgets/profile_row.dart';
import 'package:flutter_ui/product/constants/assets_constants.dart';
import 'package:flutter_ui/product/constants/string_constants.dart';
import 'package:flutter_ui/product/utility/spacer_utility.dart';

import '../../product/utility/sizes.dart';

@RoutePage()
class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const ProfileBackgroundImage(),
        Padding(
          padding: EdgeInsets.only(top: 55.h, right: 28.w, left: 28.w),
          child: const ProfileRow(),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: WidgetSizes.profileBackgroundHeight * 0.66),
          child: const ProfileCard(),
        ),
        Padding(
          padding: EdgeInsets.only(top: 270.h, right: 26.w, left: 26.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ProfileItem(
                textInside: "John Dao Michel",
                title: StringConstants.name,
              ),
              SpacerUtility.smallXX,
              const ProfileItem(
                  title: StringConstants.email,
                  textInside: "johndummy@gmail.com"),
              SpacerUtility.smallXX,
              const ProfileItem(
                  title: StringConstants.phoneNumber,
                  textInside: "+88 012 575 8465"),
              SpacerUtility.smallXX,
              const ProfileItem(
                  title: StringConstants.address,
                  textInside: "Rupsha, Khulna, Bangladesh"),
            ],
          ),
        )
      ]),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: WidgetSizes.profileCardHeight,
        width: WidgetSizes.profileCardWidth,
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            "assets/png/doctors.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class ProfileBackgroundImage extends StatelessWidget {
  const ProfileBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetConstants.profileBackground,
      width: double.infinity,
      height: WidgetSizes.profileBackgroundHeight,
      fit: BoxFit.cover,
    );
  }
}

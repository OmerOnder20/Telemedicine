import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/product/navigator/app_router.dart';
import 'package:flutter_ui/product/utility/color_utility.dart';
import 'package:flutter_ui/product/widgets/buttons/custom_elevated_button.dart';
import 'package:flutter_ui/product/widgets/texts/titleLarge/title_large_1.dart';

import '../../product/constants/assets_constants.dart';
import '../../product/constants/string_constants.dart';
import '../../product/utility/spacer_utility.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        const LoginBackgroundImage(),
        const Center(
            child: TitleLarge1(
          text: StringConstants.appName,
          color: ColorUtility.colorWhite,
        )),
        Padding(
          padding: EdgeInsets.only(bottom: 90.w),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomElevatedButton(
                  onPressed: () {
                    context.router.replace(const SignUpRoute());
                  },
                  text: StringConstants.signUp,
                  color: ColorUtility.colorLime,
                ),
                SpacerUtility.smallXXX,
                CustomElevatedButton(
                  onPressed: () {
                    context.router.replace(const SignInRoute());
                  },
                  text: StringConstants.signIn,
                  color: ColorUtility.colorOrange,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class LoginBackgroundImage extends StatelessWidget {
  const LoginBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetConstants.loginBackground,
      fit: BoxFit.cover,
      height: MediaQuery.sizeOf(context).height * 1,
      width: MediaQuery.sizeOf(context).width * 1,
    );
  }
}

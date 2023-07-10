import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/product/navigator/app_router.dart';

import '../../product/constants/assets_constants.dart';
import '../../product/constants/string_constants.dart';
import '../../product/utility/color_utility.dart';
import '../../product/utility/spacer_utility.dart';
import '../../product/widgets/buttons/custom_elevated_button.dart';
import '../../product/widgets/textFormFields/custom_text_form_field.dart';
import '../../product/widgets/texts/titleLarge/title_large_2.dart';
import '../../product/widgets/texts/titleSmall/title_small_1.dart';

@RoutePage()
class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  bool _isValidate() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        // ignore: avoid_print
        print("is valid");
        return true;
      } else {
        // ignore: avoid_print
        print("is not valid");
        return false;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Stack(
            children: [
              const SignInBackgroundImage(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SpacerUtility.giant,
                    const TitleLarge2(
                      text: StringConstants.signIn,
                      color: ColorUtility.textColorGrey,
                    ),
                    SpacerUtility.smallX,
                    const SignInRow(),
                    SpacerUtility.mediumXXX,
                    CustomTextFormField(
                      infoText: StringConstants.email,
                      controller: _emailController,
                      validator: (p0) =>
                          p0!.isEmpty ? StringConstants.buAlanBos : null,
                      textInputType: TextInputType.emailAddress,
                    ),
                    CustomTextFormField(
                      obscureText: true,
                      infoText: StringConstants.password,
                      controller: _passwordController,
                      validator: (p1) =>
                          p1!.isEmpty ? StringConstants.buAlanBos : null,
                      textInputType: TextInputType.name,
                    ),
                    SpacerUtility.smallX,
                    const ForgotButton(),
                    SpacerUtility.mediumXX,
                    CustomElevatedButton(
                        text: StringConstants.signIn,
                        onPressed: () {
                          _isValidate();
                          context.router.replace(const DashboardRoute());
                        },
                        color: ColorUtility.textColorDarkBlue),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotButton extends StatelessWidget {
  const ForgotButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(left: 5.w),
        child: const TitleSmall1(
          text: StringConstants.forgotPassword,
          color: ColorUtility.textColorBlue,
        ),
      ),
    );
  }
}

class SignInRow extends StatelessWidget {
  const SignInRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const TitleSmall1(
          text: StringConstants.dontHave,
          color: ColorUtility.textColorLightGrey,
        ),
        InkWell(
          onTap: () {
            context.router.replace(const SignUpRoute());
          },
          child: Padding(
            padding: EdgeInsets.only(left: 5.w),
            child: const TitleSmall1(
              text: "${StringConstants.signUp}!",
              color: ColorUtility.textColorBlue,
            ),
          ),
        ),
      ],
    );
  }
}

class SignInBackgroundImage extends StatelessWidget {
  const SignInBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetConstants.signBackground,
      fit: BoxFit.cover,
      height: MediaQuery.sizeOf(context).height * 1.2,
      width: MediaQuery.sizeOf(context).width * 1.2,
    );
  }
}

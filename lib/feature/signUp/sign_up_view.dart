import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/product/constants/string_constants.dart';
import 'package:flutter_ui/product/utility/spacer_utility.dart';
import 'package:flutter_ui/product/widgets/buttons/custom_elevated_button.dart';
import 'package:flutter_ui/product/widgets/texts/titleSmall/title_small_1.dart';

import '../../product/constants/assets_constants.dart';
import '../../product/navigator/app_router.dart';
import '../../product/utility/color_utility.dart';
import '../../product/widgets/textFormFields/custom_text_form_field.dart';
import '../../product/widgets/texts/titleLarge/title_large_2.dart';

@RoutePage()
class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
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
              const SignUpBackgroundImage(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SpacerUtility.giant,
                    const TitleLarge2(
                      text: StringConstants.createAcc,
                      color: ColorUtility.textColorGrey,
                    ),
                    SpacerUtility.smallX,
                    const SignUpRow(),
                    SpacerUtility.mediumXXX,
                    CustomTextFormField(
                      infoText: StringConstants.username,
                      controller: _usernameController,
                      validator: (p0) =>
                          p0!.isEmpty ? StringConstants.buAlanBos : null,
                      textInputType: TextInputType.name,
                    ),
                    CustomTextFormField(
                      infoText: StringConstants.email,
                      controller: _emailController,
                      validator: (p1) =>
                          p1!.isEmpty ? StringConstants.buAlanBos : null,
                      textInputType: TextInputType.emailAddress,
                    ),
                    CustomTextFormField(
                      infoText: StringConstants.phone,
                      controller: _phoneController,
                      validator: (p2) =>
                          p2!.isEmpty ? StringConstants.buAlanBos : null,
                      textInputType: TextInputType.phone,
                    ),
                    CustomTextFormField(
                      obscureText: true,
                      infoText: StringConstants.password,
                      controller: _passwordController,
                      validator: (p3) =>
                          p3!.isEmpty ? StringConstants.buAlanBos : null,
                      textInputType: TextInputType.name,
                    ),
                    SpacerUtility.mediumX,
                    CustomElevatedButton(
                        text: StringConstants.signUp,
                        onPressed: () {
                          _isValidate();
                          context.router.replace(const DashboardRoute());
                        },
                        color: ColorUtility.textColorDarkBlue),
                    SpacerUtility.huge
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

class SignUpRow extends StatelessWidget {
  const SignUpRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const TitleSmall1(
          text: StringConstants.alreadyHave,
          color: ColorUtility.textColorLightGrey,
        ),
        InkWell(
          onTap: () {
            context.router.replace(const SignInRoute());
          },
          child: Padding(
            padding: EdgeInsets.only(left: 5.w),
            child: const TitleSmall1(
              text: "${StringConstants.signIn}!",
              color: ColorUtility.textColorBlue,
            ),
          ),
        ),
      ],
    );
  }
}

class SignUpBackgroundImage extends StatelessWidget {
  const SignUpBackgroundImage({
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

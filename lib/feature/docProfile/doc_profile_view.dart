import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/feature/docProfile/widgets/doc_profile_column.dart';
import 'package:flutter_ui/product/utility/color_utility.dart';
import 'package:flutter_ui/product/widgets/appbar/custom_app_bar.dart';

@RoutePage()
class DocProfileView extends StatefulWidget {
  const DocProfileView({super.key});

  @override
  State<DocProfileView> createState() => _DocProfileViewState();
}

class _DocProfileViewState extends State<DocProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtility.colorWhite,
      appBar: const CustomAppBar(text: "Dr.Kate Adams"),
      body: Stack(children: [
        const DoctorProfileImage(),
        const DocProfileGradient(),
        Padding(
          padding: EdgeInsets.only(top: 380.h, right: 28.w, left: 28.w),
          child: const DocProfileColumn(),
        )
      ]),
    );
  }
}

class DocProfileGradient extends StatelessWidget {
  const DocProfileGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          ColorUtility.textColorLightBlue.withOpacity(0),
          ColorUtility.textColorLightBlue.withOpacity(0.7),
        ],
      )),
    );
  }
}

class DoctorProfileImage extends StatelessWidget {
  const DoctorProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/png/doctors.png",
      height: 330,
      fit: BoxFit.cover,
    );
  }
}

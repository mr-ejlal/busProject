import 'package:bus_project/routes/routes.dart';
import 'package:bus_project/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/images.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: getBody(),
      ),
    );
  }
}

Widget getBody() {
  return Container(
    padding: EdgeInsets.only(bottom: 28.sp),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Image.asset(appLogo),
        GestureDetector(
          onTap: () {
            Get.toNamed(loginScreenRoute);
          },
          child: Container(
            width: 316.sp,
            height: 58.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: CustomColor.white,
            ),
            child: Center(
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: CustomColor.red,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

import 'package:bus_project/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/colors.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: getBody(),
        decoration: BoxDecoration(color: CustomColor.white),
      ),
    );
  }
}

Widget getBody() {
  return Container(
    child: Column(
      children: [
        Container(
          height: 119.sp,
          color: CustomColor.black,
          child: Center(
            child: Image.asset(
              appLogo,
              height: 50.sp,
            ),
          ),
        ),
        SizedBox(
          height: 19.sp,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 158.sp,
              height: 176.sp,
              decoration: BoxDecoration(
                  color: CustomColor.red,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.sp,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.sp),
                    child: Text(
                      "Bus",
                      style: TextStyle(
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w700,
                          color: CustomColor.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.sp),
                    child: Text(
                      "Manage your Bus",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: CustomColor.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Image.asset(busImage)],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 19.sp,
            ),
            Container(
              width: 158.sp,
              height: 176.sp,
              decoration: BoxDecoration(
                  color: CustomColor.black,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 10.sp,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.sp),
                    child: Text(
                      "Driver",
                      style: TextStyle(
                          fontSize: 26.sp,
                          fontWeight: FontWeight.w700,
                          color: CustomColor.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.sp),
                    child: Text(
                      "Manage your Driver",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: CustomColor.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10.sp),
                        child: Image.asset(
                          driverImage,
                          height: 100.sp,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}

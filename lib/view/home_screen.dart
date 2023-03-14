import 'package:bus_project/controller/home_screen.dart';
import 'package:bus_project/routes/routes.dart';
import 'package:bus_project/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../model/home_screen.dart';
import '../utils/colors.dart';
import 'package:get/get.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: CustomColor.white),
          child: getBody(),
        ),
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
            GestureDetector(
              onTap: () {
                Get.toNamed(driverListScreenRoute);
              },
              child: Container(
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
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 62.sp,
        ),
        Column(
          children: HomeScreenController.to.busList
              .map((e) => BusListWidget(item: e))
              .toList(),
        ),
      ],
    ),
  );
}

class BusListWidget extends StatelessWidget {
  BusModel item;
  BusListWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355.sp,
      // height: 74.sp,
      margin: EdgeInsets.only(bottom: 40.sp),
      // padding: EdgeInsets.only(top: 15.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: CustomColor.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // SizedBox(
          //   width: 10.sp,
          // ),
          Container(
            width: 80.sp,
            color: CustomColor.white2,
            child: Image.asset(
              ksrtcImage,
              height: 74.sp,
            ),
          ),
          SizedBox(
            width: 15.sp,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.busServiceName ?? ""),
              Text(item.busModelName ?? '')
            ],
          ),
          SizedBox(
            width: 20.sp,
          ),
          Container(
            width: 70.sp,
            height: 30.sp,
            decoration: BoxDecoration(
              color: CustomColor.red,
            ),
            child: Center(
              child: Text(
                "Manage",
                style: TextStyle(color: CustomColor.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

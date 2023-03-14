import 'package:bus_project/controller/driver_add_screen.dart';
import 'package:bus_project/controller/driver_list_screen.dart';
import 'package:bus_project/model/driver_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../routes/routes.dart';
import '../utils/colors.dart';
import '../utils/images.dart';
import 'package:get/get.dart';

class DriverListScreen extends StatelessWidget {
  const DriverListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // DriverListController.to.getDriverList();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: CustomColor.white),
        child: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 119.sp,
            color: CustomColor.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.sp),
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: CustomColor.white,
                    ),
                  ),
                ),
                Text(
                  "Driver List",
                  style: TextStyle(color: CustomColor.white),
                ),
                const SizedBox(),
              ],
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          GetX<DriverListController>(builder: (c) {
            return Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.sp),
                  child: Text(
                    c.driverData.length.toString() + " buses found",
                    style: TextStyle(color: CustomColor.black),
                  ),
                ),
              ],
            );
          }),
          SizedBox(
            height: 57.sp,
          ),
          GetX<DriverListController>(builder: (controller) {
            return Column(
              children: DriverListController.to.driverData
                  .map((e) => DriverListWidget(item: e))
                  .toList(),
            );
          }),
          GestureDetector(
            onTap: () {
              Get.toNamed(driverAddScreenRoute);
            },
            child: Container(
              width: 316.sp,
              height: 58.sp,
              decoration: BoxDecoration(
                  color: CustomColor.red,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Add Driver",
                  style: TextStyle(color: CustomColor.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DriverListWidget extends StatelessWidget {
  DriverList item;
  DriverListWidget({Key? key, required this.item}) : super(key: key);

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SizedBox(
          //   width: 10.sp,
          // ),
          Container(
            width: 80.sp,
            color: CustomColor.white2,
            child: Image.asset(
              driversImage,
              height: 74.sp,
            ),
          ),
          // SizedBox(
          //   width: 15.sp,
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(item.name ?? ""), Text(item.licenseNo ?? '')],
          ),
          SizedBox(),
          GestureDetector(
            onTap: () {
              DriverListController.to.deleteDriver(driver: item);
            },
            child: Container(
              margin: EdgeInsets.only(right: 10.sp),
              width: 70.sp,
              height: 30.sp,
              decoration: BoxDecoration(
                color: CustomColor.red,
              ),
              child: Center(
                child: Text(
                  "Delete",
                  style: TextStyle(
                    color: CustomColor.white,
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   width: 5.sp,
          // )
        ],
      ),
    );
  }
}

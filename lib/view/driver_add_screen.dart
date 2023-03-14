import 'package:bus_project/controller/driver_add_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class DriverAddScreen extends StatelessWidget {
  const DriverAddScreen({Key? key}) : super(key: key);

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
        children: [
          Container(
            height: 119.sp,
            color: CustomColor.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.sp),
                  child: Icon(
                    Icons.arrow_back,
                    color: CustomColor.white,
                  ),
                ),
                Text(
                  "Add Driver",
                  style: TextStyle(color: CustomColor.white),
                ),
                const SizedBox(),
              ],
            ),
          ),
          SizedBox(
            height: 39.sp,
          ),
          Container(
            width: 321.sp,
            decoration: BoxDecoration(
                color: CustomColor.white2,
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              controller: DriverAddController.to.driverNameController,
              decoration: InputDecoration(
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                label: Center(
                  child: Text(
                    "Enter Name",
                    style: TextStyle(
                        color: CustomColor.grey,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                // hintText: 'Enter your username',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter name';
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 15.sp,
          ),
          Container(
            width: 321.sp,
            decoration: BoxDecoration(
                color: CustomColor.white2,
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              controller: DriverAddController.to.licenseController,
              decoration: InputDecoration(
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                label: Center(
                  child: Text(
                    "Enter License Number",
                    style: TextStyle(
                        color: CustomColor.grey,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                // hintText: 'Enter your username',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter name';
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 200.sp,
          ),
          GestureDetector(
            onTap: () {
              DriverAddController.to.addDriver();
            },
            child: Container(
              width: 316.sp,
              height: 58.sp,
              decoration: BoxDecoration(
                  color: CustomColor.red,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Save",
                  style: TextStyle(color: CustomColor.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

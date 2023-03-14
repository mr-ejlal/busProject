import 'package:bus_project/controller/login_screen.dart';
import 'package:bus_project/utils/colors.dart';
import 'package:bus_project/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;
import 'package:get/get.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({Key? key}) : super(key: key);

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
        Stack(children: <Widget>[
          Container(
            color: CustomColor.black,
            height: 266.sp,
          ),
          Positioned(
            bottom: 18.0,
            right: 0.0,
            left: 130.0,
            child: Transform.rotate(
              angle: -math.pi / -3,
              child: Container(
                color: CustomColor.red,
                height: 450.sp,
                width: 442.sp,
              ),
            ),
          ),
          Positioned(
            bottom: 72.sp,
            right: 0.0,
            left: 50.0.sp,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(color: CustomColor.white, fontSize: 42.sp),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  "Manage Your Bus and Drivers",
                  style: TextStyle(color: CustomColor.white, fontSize: 16.sp),
                ),
              ],
            ),
          ),
        ]),
        SizedBox(
          height: 42.sp,
        ),
        Center(
          child: Container(
            width: 321.sp,
            decoration: BoxDecoration(
                color: CustomColor.white2,
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              controller: LoginScreenController.to.usernameController,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.sp, horizontal: 10.sp),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                label: Center(
                  child: Text(
                    "Enter Username",
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
                  return 'Please enter your username';
                }
                return null;
              },
            ),
          ),
        ),
        SizedBox(
          height: 17.sp,
        ),
        Center(
          child: Container(
            width: 321.sp,
            decoration: BoxDecoration(
                color: CustomColor.white2,
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              key: LoginScreenController.to.formKey,
              controller: LoginScreenController.to.passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.sp, horizontal: 10.sp),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                label: Center(
                  child: Text(
                    "Enter Password",
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
                  return 'Please enter your username';
                }
                return null;
              },
            ),
          ),
        ),
        SizedBox(
          height: 267.sp,
        ),
        GestureDetector(
          onTap: () {
            LoginScreenController.to.signIn();
          },
          child: Container(
            width: 321.sp,
            height: 58.sp,
            decoration: BoxDecoration(
                color: CustomColor.red,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(color: CustomColor.white, fontSize: 20.sp),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

import 'package:bus_project/routes/app_modules.dart';
import 'package:bus_project/routes/routes.dart';
import 'package:bus_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: splashScreenRoute,
            getPages: AppPages.pages,
            theme: ThemeData(scaffoldBackgroundColor: CustomColor.red),
          );
        });
  }
}

Future<SharedPreferences> preferences = SharedPreferences.getInstance();

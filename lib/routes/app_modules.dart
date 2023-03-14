import 'package:bus_project/controller/bus_layout_screen.dart';
import 'package:bus_project/controller/driver_add_screen.dart';
import 'package:bus_project/controller/driver_list_screen.dart';
import 'package:bus_project/routes/routes.dart';
import 'package:bus_project/view/bus_layout_screen.dart';
import 'package:bus_project/view/driver_list_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../controller/home_screen.dart';
import '../controller/login_screen.dart';
import '../controller/splash_screen.dart';
import '../view/driver_add_screen.dart';
import '../view/home_screen.dart';
import '../view/login_screen.dart';
import '../view/splash_screen.dart';

abstract class AppPages {
  static final List<GetPage> pages = <GetPage>[
    GetPage(
        name: splashScreenRoute,
        page: () => const SplashScreenView(),
        binding: SplashScreenControllerBinding()),
    GetPage(
        name: loginScreenRoute,
        page: () => const LoginScreenView(),
        binding: LoginScreenControllerBinding()),
    GetPage(
        name: homeScreenRoute,
        page: () => const HomeScreenView(),
        binding: HomeScreenControllerBinding()),
    GetPage(
        name: driverListScreenRoute,
        page: () => const DriverListScreen(),
        binding: DriverListControllerBinding()),
    GetPage(
        name: driverAddScreenRoute,
        page: () => const DriverAddScreen(),
        binding: DriverAddControllerBinding()),
    GetPage(
        name: busLayoutScreenRoute,
        page: () => const BusLayoutScreen(),
        binding: BusLayoutControllerBinding()),
  ];
}

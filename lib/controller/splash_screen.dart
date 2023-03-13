import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SplashScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
  }
}

class SplashScreenController extends GetxController {
  static SplashScreenController get to => Get.find();
}

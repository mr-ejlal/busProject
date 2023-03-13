import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DriverAddControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DriverAddController());
  }
}

class DriverAddController extends GetxController {
  static DriverAddController get to => Get.find();
}

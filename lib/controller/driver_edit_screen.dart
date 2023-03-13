import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DriverEditControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DriverEditController());
  }
}

class DriverEditController extends GetxController {
  static DriverEditController get to => Get.find();
}

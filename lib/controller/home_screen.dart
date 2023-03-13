import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}

class HomeScreenController extends GetxController {
  static HomeScreenController get to => Get.find();
}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BusLayoutControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BusLayoutController());
  }
}

class BusLayoutController extends GetxController {
  static BusLayoutController get to => Get.find();
}

import 'package:bus_project/api_service/api_services.dart';
import 'package:bus_project/model/driver_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DriverListControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DriverListController());
  }
}

class DriverListController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getDriverList();
  }

  static DriverListController get to => Get.find();
  RxList<DriverList> driverData = <DriverList>[].obs;
  getDriverList() async {
    DriverListModel data = await ApiService.getDriverList();
    driverData.value = data.driverList ?? <DriverList>[];
  }
}

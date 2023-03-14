import 'package:bus_project/api_service/api_services.dart';
import 'package:bus_project/controller/driver_list_screen.dart';
import 'package:bus_project/model/driver_add_screen.dart';
import 'package:bus_project/routes/routes.dart';
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
  TextEditingController driverNameController = TextEditingController();
  TextEditingController licenseController = TextEditingController();

  addDriver() async {
    DriverAddResponse data = await ApiService.addDriver(
        driverName: driverNameController.text,
        licenseNo: licenseController.text);
    if (data.status == true) {
      DriverListController.to.getDriverList();
      Get.back();
    }
  }
}

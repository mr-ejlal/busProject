import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/home_screen.dart';

class HomeScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}

class HomeScreenController extends GetxController {
  static HomeScreenController get to => Get.find();
  List<BusModel> busList = <BusModel>[
    BusModel(
        busServiceName: "KSRTC",
        busModelName: "Swift Scania P-series",
        driverName: "Rohit sharma",
        numberOfSeats: 40,
        licenseNumber: "123456789",
        busLayoutType: BusLayoutType.oneByThree),
    BusModel(
        busServiceName: "KSRTC",
        busModelName: "Swift Scania P-series",
        driverName: "Rohit sharma",
        numberOfSeats: 40,
        licenseNumber: "123456789",
        busLayoutType: BusLayoutType.twoByTwo),
    BusModel(
        busServiceName: "KSRTC",
        busModelName: "Swift Scania P-series",
        driverName: "Rohit sharma",
        numberOfSeats: 40,
        licenseNumber: "123456789",
        busLayoutType: BusLayoutType.oneByThree),
    BusModel(
        busServiceName: "KSRTC",
        busModelName: "Swift Scania P-series",
        driverName: "Rohit sharma",
        numberOfSeats: 40,
        licenseNumber: "123456789",
        busLayoutType: BusLayoutType.twoByTwo),
    BusModel(
        busServiceName: "KSRTC",
        busModelName: "Swift Scania P-series",
        driverName: "Rohit sharma",
        licenseNumber: "123456789",
        numberOfSeats: 40,
        busLayoutType: BusLayoutType.oneByThree),
    BusModel(
        busServiceName: "KSRTC",
        busModelName: "Swift Scania P-series",
        driverName: "Rohit sharma",
        licenseNumber: "123456789",
        numberOfSeats: 40,
        busLayoutType: BusLayoutType.twoByTwo),
  ];
}

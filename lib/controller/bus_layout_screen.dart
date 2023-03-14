import 'package:bus_project/model/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../model/home_screen.dart';
import '../model/bus_layout_screen.dart';

class BusLayoutControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BusLayoutController());
  }
}

class BusLayoutController extends GetxController {
  static BusLayoutController get to => Get.find();
  @override
  void onInit() {
    super.onInit();
    item = Get.arguments ?? BusModel;
  }

  BusModel item = BusModel(
      busServiceName: "",
      busModelName: "",
      driverName: "",
      licenseNumber: "",
      numberOfSeats: 0,
      busLayoutType: BusLayoutType.twoByTwo);

  List<List<int>> busLayOutGenerator(int number, BusLayoutType layOutType) {
    List<int> numbers = List.generate(number, (index) => index);

    switch (layOutType) {
      case BusLayoutType.twoByTwo:
        List<int> num1 = numbers.sublist(0, (numbers.length / 2).floor());
        List<int> num2 =
            numbers.sublist((numbers.length / 2).floor(), numbers.length);
        return [num1, num2];
      case BusLayoutType.oneByThree:
        List<int> num1 = numbers.sublist(0, (numbers.length / 4).ceil());
        List<int> num2 =
            numbers.sublist((numbers.length / 4).ceil(), numbers.length);
        print([num1, num2]);
        return [num1, num2];
    }
  }
}

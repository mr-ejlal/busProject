import 'package:bus_project/controller/bus_layout_screen.dart';
import 'package:bus_project/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../model/home_screen.dart';
import '../utils/colors.dart';
import 'package:get/get.dart';
import '../model/bus_layout_screen.dart';

class BusLayoutScreen extends StatelessWidget {
  const BusLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // DriverListController.to.getDriverList();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: CustomColor.white),
        child: const Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 119.sp,
            color: CustomColor.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.sp),
                  child: Icon(
                    Icons.arrow_back,
                    color: CustomColor.white,
                  ),
                ),
                Text(
                  "KSRTC Swift Scania P-​series",
                  style: TextStyle(color: CustomColor.white),
                ),
                const SizedBox(),
              ],
            ),
          ),
          SizedBox(
            height: 28.sp,
          ),
          Container(
            width: 335.sp,
            height: 116.sp,
            decoration: BoxDecoration(
                color: CustomColor.black,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                SizedBox(
                  width: 20.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      BusLayoutController.to.item.driverName ?? "",
                      style: TextStyle(
                        color: CustomColor.white,
                        fontSize: 26.sp,
                      ),
                    ),
                    Text(
                      BusLayoutController.to.item.licenseNumber ?? "",
                      style: TextStyle(color: CustomColor.white),
                    )
                  ],
                ),
                Image.asset(driverImage),
              ],
            ),
          ),
          BusLayout(bus: BusLayoutController.to.item)
        ],
      ),
    );
  }
}

class BusLayout extends StatelessWidget {
  final BusModel bus;
  BusLayout({required this.bus});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          DriverSeat(),
          SeatLayOut(
            bus: bus,
          ),
        ],
      ),
    );
  }
}

class SeatLayOut extends StatelessWidget {
  final BusModel bus;
  SeatLayOut({required this.bus});
  @override
  Widget build(BuildContext context) {
    switch (BusLayoutType.twoByTwo) {
      case BusLayoutType.twoByTwo:
        return TwoByTwoBusLayOut(
          bus: bus,
        );
      case BusLayoutType.oneByThree:
        return OneByThreeBusLayOut(
          bus: bus,
        );
    }
  }
}

class TwoByTwoBusLayOut extends StatelessWidget {
  final BusModel bus;
  TwoByTwoBusLayOut({required this.bus});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: BusLayoutController.to
          .busLayOutGenerator(bus.numberOfSeats ?? 0, BusLayoutType.twoByTwo)
          .map(
            (e) => Container(
              width: Get.width * .2,
              child: GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10.sp,
                    crossAxisSpacing: 10.sp,
                    crossAxisCount: 2,
                    childAspectRatio: 4 / 3),
                children: e
                    .map((e) => Icon(
                          Icons.event_seat,
                          color: CustomColor.red,
                        ))
                    .toList(),
              ),
            ),
          )
          .toList(),
    );
  }
}

class OneByThreeBusLayOut extends StatelessWidget {
  final BusModel bus;
  OneByThreeBusLayOut({required this.bus});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .8,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: BusLayoutController.to
              .busLayOutGenerator(
                  bus.numberOfSeats ?? 0, BusLayoutType.oneByThree)
              .asMap()
              .entries
              .toList()
              .map(
                (e) => e.key == 0
                    ? Column(
                        children: e.value
                            .map((e) => Icon(Icons.add_a_photo))
                            .toList())
                    : Container(
                        width: Get.width * .2,
                        child: GridView(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 10.sp,
                                  crossAxisSpacing: 10.sp,
                                  crossAxisCount: 3,
                                  childAspectRatio: 3 / 2),
                          children: e.value
                              .map((e) => Icon(
                                    Icons.event_seat,
                                    color: CustomColor.red,
                                  ))
                              .toList(),
                        ),
                      ),
              )
              .toList()),
    );
  }
}

class DriverSeat extends StatelessWidget {
  const DriverSeat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.sp),
      alignment: Alignment.centerRight,
      child: Icon(Icons.event_seat),
    );
  }
}

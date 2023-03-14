// To parse this JSON data, do
//
//     final driverListModel = driverListModelFromJson(jsonString);

import 'dart:convert';

DriverListModel driverListModelFromJson(String str) =>
    DriverListModel.fromJson(json.decode(str));

String driverListModelToJson(DriverListModel data) =>
    json.encode(data.toJson());

class DriverListModel {
  DriverListModel({
    this.status,
    this.driverList,
  });

  bool? status;
  List<DriverList>? driverList;

  factory DriverListModel.fromJson(Map<String, dynamic> json) =>
      DriverListModel(
        status: json["status"],
        driverList: json["driver_list"] == null
            ? []
            : List<DriverList>.from(
                json["driver_list"].map((x) => DriverList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "driver_list":
            List<dynamic>.from(driverList ?? [].map((x) => x.toJson())),
      };
}

class DriverList {
  DriverList({
    this.id,
    this.name,
    this.mobile,
    this.licenseNo,
  });

  int? id;
  String? name;
  int? mobile;
  String? licenseNo;

  factory DriverList.fromJson(Map<String, dynamic> json) => DriverList(
        id: json["id"],
        name: json["name"],
        mobile: json["mobile"],
        licenseNo: json["license_no"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "mobile": mobile,
        "license_no": licenseNo,
      };
}

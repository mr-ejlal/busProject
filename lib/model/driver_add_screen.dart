import 'dart:convert';

DriverAddResponse driverAddResponseFromJson(String str) =>
    DriverAddResponse.fromJson(json.decode(str));

String driverAddResponseToJson(DriverAddResponse data) =>
    json.encode(data.toJson());

class DriverAddResponse {
  DriverAddResponse({
    this.status,
    this.message,
  });

  bool? status;
  String? message;

  factory DriverAddResponse.fromJson(Map<String, dynamic> json) =>
      DriverAddResponse(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}

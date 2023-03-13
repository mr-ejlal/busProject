import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    this.status,
    this.name,
    this.refresh,
    this.access,
    this.message,
    this.urlId,
  });
  bool? status;
  String? name;
  String? refresh;
  String? access;
  String? message;
  String? urlId;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        status: json["status"] ?? false,
        name: json["name"] ?? "",
        refresh: json["refresh"] ?? "",
        access: json["access"] ?? "",
        message: json["message"] ?? "",
        urlId: json["url_id"] ?? "",
      );
  Map<String, dynamic> toJson() => {
        "status": status,
        "name": name,
        "refresh": refresh,
        "access": access,
        "message": message,
        "url_id": urlId,
      };
}

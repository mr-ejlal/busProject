import 'package:bus_project/api_service/url_file.dart';

import '../main.dart';
import '../model/driver_list_screen.dart';
import '../model/login_screen.dart';
import 'package:http/http.dart' as http;

import '../utils/string_constants.dart';

class ApiService {
  static Future<String> getToken() async {
    String token = (await preferences).getString(accessToken) ?? "";
    // String token =
    //    "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY4NTk0NzU3LCJpYXQiOjE2NjYwMDI3NTcsImp0aSI6Ijc1NWQzYThmNjVhNjRhZGY4OGYxN2FlYWVkMzA1NWMxIiwidXNlcl9pZCI6IjE4ZmRiOWZmLTdmNTgtNDUyNC1hYzI5LTRjZDQ2ZjJjYTlhZSJ9.HEtWGDwTsFzMUc61_NRMUDsFAMs5S5im8lCmpk8LUwA";
    String authorisation = 'Bearer $token';

    return authorisation;
  }

  static Future<String> getUrl() async {
    String url = (await preferences).getString(urlId) ?? "";
    // String token =
    //    "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjY4NTk0NzU3LCJpYXQiOjE2NjYwMDI3NTcsImp0aSI6Ijc1NWQzYThmNjVhNjRhZGY4OGYxN2FlYWVkMzA1NWMxIiwidXNlcl9pZCI6IjE4ZmRiOWZmLTdmNTgtNDUyNC1hYzI5LTRjZDQ2ZjJjYTlhZSJ9.HEtWGDwTsFzMUc61_NRMUDsFAMs5S5im8lCmpk8LUwA";
    // String authorisation = 'Bearer $token';

    return url;
  }

  static Future<LoginResponse> signIn(
      {required String userName, required String password}) async {
    http.Response response = await http.post(Uri.parse(loginUrl), body: {
      "username": userName,
      "password": password,
    });
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      return loginResponseFromJson(response.body);
    } else {
      throw Exception(response.body);
    }
  }

  static Future<DriverListModel> getDriverList() async {
    http.Response response = await http.get(
        Uri.parse(driverListUrl + await getUrl() + "/"),
        headers: {"Authorization": await getToken()});

    if (response.statusCode == 200) {
      return driverListModelFromJson(response.body);
    } else {
      throw Exception(response.body);
    }
  }
}

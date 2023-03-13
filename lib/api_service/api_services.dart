import 'package:bus_project/api_service/url_file.dart';

import '../model/login_screen.dart';
import 'package:http/http.dart' as http;

class ApiService {
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
}

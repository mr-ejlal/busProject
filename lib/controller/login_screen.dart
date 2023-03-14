import 'package:bus_project/api_service/api_services.dart';
import 'package:bus_project/model/login_screen.dart';
import 'package:bus_project/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../utils/string_constants.dart';

class LoginScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreenController());
  }
}

class LoginScreenController extends GetxController {
  static LoginScreenController get to => Get.find();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  signIn() async {
    // if (formKey.currentState?.validate() ?? false) {
    LoginResponse data = await ApiService.signIn(
        userName: LoginScreenController.to.usernameController.text,
        password: LoginScreenController.to.passwordController.text);

    if (data.status == true) {
      (await preferences).setString(accessToken, data.access.toString());
      (await preferences).setString(urlId, data.urlId.toString());
      Get.toNamed(homeScreenRoute);
    } else {
      Get.defaultDialog(middleText: "Login Failed");
    }
  }
}
// }

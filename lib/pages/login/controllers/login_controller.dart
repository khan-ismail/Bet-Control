import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController to = Get.isRegistered<LoginController>()
      ? Get.find<LoginController>()
      : Get.put(LoginController());

  final emailConroller = TextEditingController();
  final passwordConroller = TextEditingController();

  RxBool passwordObscureText = RxBool(true);

  void updatePasswordObscureTextFlag() {
    passwordObscureText.value = !passwordObscureText.value;
  }
}

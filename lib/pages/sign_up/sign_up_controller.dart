import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController to = Get.isRegistered<SignUpController>()
      ? Get.find<SignUpController>()
      : Get.put(SignUpController());

  final nameConroller = TextEditingController();
  final emailConroller = TextEditingController();
  final dobConroller = TextEditingController();
  final passwordConroller = TextEditingController();
  final confirmPasswordConroller = TextEditingController();

  RxBool isAgreedTC = RxBool(false);
}

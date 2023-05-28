import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';

class LoginController extends GetxController {
  final emailC = TextEditingController(text: "aldianprawira99@gmail.com");
  final passC = TextEditingController(text: "123123");
  final authC = Get.find<AuthController>();
  bool isVisible = true;

  void togglePass() {
    isVisible = !isVisible;
    update();
  }

  @override
  void dispose() {
    emailC.dispose();
    passC.dispose();
  }
}

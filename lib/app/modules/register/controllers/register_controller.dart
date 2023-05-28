import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';

class RegisterController extends GetxController {
  final emailC = TextEditingController();
  final passC = TextEditingController();
  final authC = Get.find<AuthController>();
  bool isVisible1 = true;
  bool isVisible2 = true;

  void togglePass1() {
    isVisible1 = !isVisible1;
    update();
  }

  void togglePass2() {
    isVisible2 = !isVisible2;
    update();
  }

  @override
  void dispose() {
    emailC.dispose();
    passC.dispose();
  }
}

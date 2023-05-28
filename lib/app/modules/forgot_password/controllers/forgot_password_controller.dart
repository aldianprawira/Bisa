import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';

class ForgotPasswordController extends GetxController {
  final emailC = TextEditingController();
  final authC = Get.find<AuthController>();
}

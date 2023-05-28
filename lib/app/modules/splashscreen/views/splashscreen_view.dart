import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashscreenController>(
      init: SplashscreenController(),
      initState: (state) => Timer.periodic(
        const Duration(seconds: 3),
        (timer) {
          Get.offAllNamed(Routes.ONBOARDING);
          timer.cancel();
        },
      ),
      builder: (context) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 113,
                    height: 127,
                    child: Image.asset("assets/images/Logo.png"),
                  ),
                  const Text(
                    "DINOTIS",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

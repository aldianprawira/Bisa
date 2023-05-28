import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: CarouselSlider(
              options: CarouselOptions(
                height: Get.height,
                viewportFraction: 1,
                enableInfiniteScroll: false,
              ),
              items: [
                Stack(
                  children: [
                    SizedBox(
                      width: Get.width,
                      child: Image.asset(
                        "assets/images/onboarding.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: Get.width,
                        height: 380,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 136),
                              Text(
                                "Chat With Awesome Creators",
                                style: TextStyle(
                                  color: Color(0xff001855),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Meet a great creators from various profession? Only here is the place.",
                                style: TextStyle(
                                  color: Color(0xff535353),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 200,
                          ),
                          SizedBox(
                            width: Get.width * 0.9,
                            child: Image.asset("assets/images/onboardingBoy.png"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () => Get.toNamed(Routes.REGISTER),
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                              color: Color(0xff001855),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    SizedBox(
                      width: Get.width,
                      child: Image.asset(
                        "assets/images/onboarding.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: Get.width,
                        height: 380,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 136),
                              Text(
                                "Anytime Anywhere!",
                                style: TextStyle(
                                  color: Color(0xff001855),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Are you statisfied just hearing the sound? like podcast? if you chat here, you can see each other!",
                                style: TextStyle(
                                  color: Color(0xff535353),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 120,
                          ),
                          SizedBox(
                            width: Get.width * 0.9,
                            child: Image.asset("assets/images/onboardingGirl.png"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () => Get.toNamed(Routes.REGISTER),
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              color: Color(0xff001855),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/widgets/profile_listtile.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: Get.width,
              height: 240,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff0C3DBB),
                    Color(0xff5C8AFF),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage("assets/images/pp.png"),
                    backgroundColor: Colors.grey[300],
                    radius: 40,
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Vivian Candra Diharja",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Psychology",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () => Get.back(),
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: const Color(0xffEAF0FF).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.arrow_back),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: Get.width,
                height: 600,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    ProfileListTile(
                      title: "Edit Profile",
                      icon: "assets/svg/editProfileIcon.svg",
                      color: Color(0xff122F77),
                      onTap: () => Get.toNamed(Routes.EDIT_PROFILE),
                    ),
                    const SizedBox(height: 8),
                    const ProfileListTile(
                      title: "Social Media",
                      icon: "assets/svg/socialMediaIcon.svg",
                      color: Color(0xff122F77),
                    ),
                    const SizedBox(height: 8),
                    const ProfileListTile(
                      title: "Your Choice Creator",
                      icon: "assets/svg/yourChoiceCreatorIcon.svg",
                      color: Color(0xff122F77),
                    ),
                    const SizedBox(height: 8),
                    const ProfileListTile(
                      title: "Pick Role",
                      icon: "assets/svg/pickRoleIcon.svg",
                      color: Color(0xff122F77),
                    ),
                    const SizedBox(height: 8),
                    const ProfileListTile(
                      title: "Portofolio",
                      icon: "assets/svg/portofolioIcon.svg",
                      color: Color(0xff122F77),
                    ),
                    const SizedBox(height: 8),
                    const ProfileListTile(
                      title: "Help",
                      icon: "assets/svg/helpIcon.svg",
                      color: Color(0xff122F77),
                    ),
                    const SizedBox(height: 8),
                    ProfileListTile(
                      title: "Log Out",
                      icon: "assets/svg/logoutIcon.svg",
                      color: const Color(0xffDC3A3A),
                      onTap: () => controller.authC.logout(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


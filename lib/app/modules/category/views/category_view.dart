import 'package:dinotis/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/widgets/menu_category.dart';
import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F6F6),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
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
                  const Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    children: [
                      MenuCategory(
                        image: "assets/images/entertainment.png",
                        title: "Entertainment",
                      ),
                      SizedBox(height: 16),
                      MenuCategory(
                        image: "assets/images/economy.png",
                        title: "Economy",
                      ),
                      SizedBox(height: 16),
                      MenuCategory(
                        image: "assets/images/business.png",
                        title: "Business",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const MenuCategory(
                        image: "assets/images/health.png",
                        title: "Health",
                      ),
                      const SizedBox(height: 16),
                      MenuCategory(
                        image: "assets/images/education.png",
                        title: "Education",
                        onTap: () => Get.toNamed(Routes.EDUCATION),
                      ),
                      const SizedBox(height: 16),
                      const MenuCategory(
                        image: "assets/images/technology.png",
                        title: "Technology",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

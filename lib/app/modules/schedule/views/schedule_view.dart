import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/widgets/calendar_date.dart';
import '../../../shared/widgets/schedule_card.dart';
import '../controllers/schedule_controller.dart';

class ScheduleView extends GetView<ScheduleController> {
  const ScheduleView({Key? key}) : super(key: key);
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
                    "Schedule",
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
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                    ),
                  ),
                  const Text(
                    "Februari 2023",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalendarDate(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      date: "1",
                    ),
                    CalendarDate(
                      backgroundColor: Color(0xff0C3DBB),
                      foregroundColor: Colors.white,
                      date: "2",
                    ),
                    CalendarDate(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      date: "3",
                    ),
                    CalendarDate(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      date: "4",
                    ),
                    CalendarDate(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      date: "5",
                    ),
                    CalendarDate(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      date: "6",
                    ),
                    CalendarDate(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      date: "7",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const ScheduleCard(),
              const SizedBox(height: 16),
              const ScheduleCard(),
              const SizedBox(height: 16),
              const ScheduleCard(),
              const SizedBox(height: 16),
              const ScheduleCard(),
            ],
          ),
        ),
      ),
    );
  }
}

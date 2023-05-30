import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeetController extends GetxController {
  final TextEditingController titleC = TextEditingController(text: "Psychology Talk: How To Relieve Stress");
  final TextEditingController descriptionC = TextEditingController(text: "Explore the mind and behavior with expert speakers covering topics from cognitive to social psychology. Gain valuable insights and practical applications. Join us now!");
  final TextEditingController dateC = TextEditingController(text: "23/2/2003");
  final TextEditingController startC = TextEditingController(text: "13.00");
  final TextEditingController finishC = TextEditingController(text: "16.00");
  final TextEditingController tipeC = TextEditingController(text: "Private");
  final TextEditingController capacityC = TextEditingController(text: "1 People");
  final TextEditingController thumbnailC = TextEditingController(text: "Judul.png ");
}

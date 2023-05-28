import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/meet_controller.dart';

class MeetView extends GetView<MeetController> {
  const MeetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MeetView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MeetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

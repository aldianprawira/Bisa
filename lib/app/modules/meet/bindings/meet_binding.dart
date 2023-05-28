import 'package:get/get.dart';

import '../controllers/meet_controller.dart';

class MeetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MeetController>(
      () => MeetController(),
    );
  }
}

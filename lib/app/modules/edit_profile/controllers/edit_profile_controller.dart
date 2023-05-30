import 'package:get/get.dart';

class EditProfileController extends GetxController {
  bool isVisible = true;

  void togglePass() {
    isVisible = !isVisible;
    update();
  }
}

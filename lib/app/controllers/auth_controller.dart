import 'package:dinotis/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> streamAuthStatus() {
    return auth.authStateChanges();
  }

  void register(String email, String password) async {
    try {
      UserCredential myUser = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await myUser.user!.sendEmailVerification();
      Get.defaultDialog(
        title: "Email verification",
        middleText: "We have sent a verification email to $email",
        textConfirm: "Login",
        onConfirm: () {
          Get.back();
          Get.offAllNamed(Routes.LOGIN);
        },
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        Get.defaultDialog(
          title: "Weak password",
          middleText: "The password provided is too weak.",
          textConfirm: "Okay",
          onConfirm: () => Get.back(),
        );
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        Get.defaultDialog(
          title: "Email already in use",
          middleText: "The account already exists for that email.",
          textConfirm: "Okay",
          onConfirm: () => Get.back(),
        );
      }
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Something when wrong",
        middleText: "Unable to register this account.",
        textConfirm: "Okay",
        onConfirm: () => Get.back(),
      );
    }
  }

  void login(String email, String password) async {
    try {
      UserCredential myUser = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (myUser.user!.emailVerified) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.defaultDialog(
          title: "Email verification",
          middleText: "You need to verify your email first",
          textConfirm: "Okay",
          onConfirm: () => Get.back(),
          textCancel: "Send again",
          onCancel: () async {
            await myUser.user!.sendEmailVerification();
          },
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        Get.defaultDialog(
          title: "User not found",
          middleText: "No user found for that email.",
          textConfirm: "Okay",
          onConfirm: () => Get.back(),
        );
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        Get.defaultDialog(
          title: "Wrong password",
          middleText: "Wrong password provided for that user.",
          textConfirm: "Okay",
          onConfirm: () => Get.back(),
        );
      }
    }
  }

  void resetPassword(String email) async {
    if (email != "" && GetUtils.isEmail(email)) {
      try {
        await auth.sendPasswordResetEmail(email: email);
        Get.defaultDialog(
          title: "Reset password",
          middleText: "A link to reset password has been sent to to $email",
          textConfirm: "Login",
          onConfirm: () {
            Get.back();
            Get.offAllNamed(Routes.LOGIN);
          },
        );
      } catch (e) {
        Get.defaultDialog(
          title: "Something when wrong",
          middleText: "Failed to reset password.",
          textConfirm: "Okay",
          onConfirm: () => Get.back(),
        );
      }
    } else {
      Get.defaultDialog(
        title: "Something when wrong",
        middleText: "Invalid email.",
        textConfirm: "Okay",
        onConfirm: () => Get.back(),
      );
    }
  }

  void logout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}

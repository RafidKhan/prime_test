import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prime_tect_test/app/data/pref_keys.dart';
import 'package:prime_tect_test/app/data/shared_pref.dart';
import 'package:prime_tect_test/app/modules/login/repository/login_repository.dart';
import 'package:prime_tect_test/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool obscurePassword = true.obs;
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> signIn() async {
    Get.dialog(const AlertDialog(
      content: Center(child: CircularProgressIndicator()),
    ));
    try {
      Map<String, dynamic> body = {
        "mobileNumber": emailController.text.trim(),
        "userPassword": passwordController.text.trim(),
      };
      final response = await LoginRepository().signInUser(body: body);
      if (response != null) {
        SharedPref().writeString(keyToken, response.data?.token ?? "");
        SharedPref().writeString(keyName, response.data?.userName ?? "");
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.snackbar('login failed', '');
      }
      Get.back();
    } catch (e) {
      Get.back();
      Get.snackbar('login failed', '$e');
    }
  }
}

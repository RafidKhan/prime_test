import 'package:get/get.dart';
import 'package:prime_tect_test/app/data/pref_keys.dart';
import 'package:prime_tect_test/app/data/shared_pref.dart';

class HomeController extends GetxController {
  RxString userName = "".obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    getUserName();
    super.onReady();
  }

  Future<void> getUserName() async {
    userName.value = await SharedPref().readString(keyName) ?? "";
  }

}

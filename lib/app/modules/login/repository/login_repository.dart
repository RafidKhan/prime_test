import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:prime_tect_test/app/data/constants.dart';
import 'package:prime_tect_test/app/models/login_model.dart';

class LoginRepository {
  GetConnect getConnect = GetConnect();

  Future<LoginModel?> signInUser({required Map<String, dynamic> body}) async {
    try {
      final response = await getConnect.post(signInUrl, body);

      if (response.statusCode == 200) {
        return LoginModel.fromJson(response.body);
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}

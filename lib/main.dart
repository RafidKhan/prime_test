import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prime_tect_test/app/data/pref_keys.dart';
import 'package:prime_tect_test/app/data/shared_pref.dart';
import 'package:prime_tect_test/app/data/theme.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final String? token = await SharedPref().readString(keyToken);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      theme: buildTheme(),
      initialRoute: token == null ? AppPages.INITIAL : Routes.HOME,
      getPages: AppPages.routes,
    ),
  );
}

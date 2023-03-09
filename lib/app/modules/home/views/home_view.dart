import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:prime_tect_test/app/modules/home/views/notices.dart';
import 'package:prime_tect_test/app/modules/home/views/quick_access.dart';
import 'package:prime_tect_test/app/modules/home/views/top_card_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeTopCard(),
            HomeQuickAcess(),
            HomeNotices()
          ],
        ),
      ),
    );
  }
}

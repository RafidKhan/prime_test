import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prime_tect_test/app/data/shared_pref.dart';
import 'package:prime_tect_test/app/data/styles.dart';
import 'package:prime_tect_test/app/modules/home/controllers/home_controller.dart';
import 'package:prime_tect_test/app/routes/app_pages.dart';

class HomeTopCard extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: 212 * 1.4,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/home_header.png",
              height: 212,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: horizontalMargin,
                right: horizontalMargin,
                top: 60,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/user_icon.png",
                    height: 42,
                    width: 42,
                    fit: BoxFit.cover,
                  ),
                  InkWell(
                    onTap: () async {
                      await SharedPref().removeAll();
                      Get.offAllNamed(Routes.LOGIN);
                    },
                    child: Image.asset(
                      "assets/images/notification.png",
                      height: 24,
                      width: 24,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 170,
                margin:
                    const EdgeInsets.symmetric(horizontal: horizontalMargin),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200]!,
                        offset: const Offset(
                          0.5,
                          0.2,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 0.5,
                      ), //BoxShadow
                    ]),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/card_bg.png",
                      height: 170,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            bottom: 21,
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/images/mbl_logo.png",
                              height: 60,
                              width: 163,
                            ),
                          ),
                        ),
                        const Text(
                          "Welcome Back",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          controller.userName.value,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}

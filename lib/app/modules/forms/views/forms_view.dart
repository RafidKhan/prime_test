import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:prime_tect_test/app/data/styles.dart';
import 'package:prime_tect_test/app/routes/app_pages.dart';

import '../controllers/forms_controller.dart';

class FormsView extends GetView<FormsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Forms",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: horizontalMargin),
            child: Image.asset(
              "assets/images/upload_form.png",
              height: 42,
              width: 42,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: horizontalMargin),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search file",
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: fadedHintColor,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: fadedHintColor,
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/search_icon.png",
                      height: 10,
                      width: 10,
                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                    horizontal: horizontalMargin, vertical: 10),
                itemCount: controller.listPdf.length,
                itemBuilder: (context, index) {
                  final element = controller.listPdf[index];
                  return InkWell(
                    onTap: () {
                      Get.toNamed(Routes.PDF_PAGE, arguments: element);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(element.name),
                          Container(
                            height: 122,
                            width: 140,
                            decoration: BoxDecoration(
                              color: const Color(0xffF8F8FB),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.more_vert,
                                      color: fadedTextColor,
                                    )),
                                Image.asset(
                                  "assets/images/pdf_thumbnail.png",
                                  height: 60,
                                  width: 60,
                                ),
                                Text(
                                  element.name,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

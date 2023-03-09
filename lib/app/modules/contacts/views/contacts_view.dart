import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prime_tect_test/app/data/styles.dart';
import 'package:prime_tect_test/app/modules/pdf_page/controllers/pdf_page_controller.dart';


class ContactsView extends GetView<PdfPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContactsView'),
        centerTitle: true,
      ),
      body: Obx(() {
        return controller.contacts.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemCount: controller.contacts.length,
                padding:
                    const EdgeInsets.symmetric(horizontal: horizontalMargin),
                itemBuilder: (context, index) {
                  final element = controller.contacts[index];
                  return InkWell(
                    onTap: () {
                      Get.back(result: element);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        element.displayName ?? "",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
              );
      }),
    );
  }
}

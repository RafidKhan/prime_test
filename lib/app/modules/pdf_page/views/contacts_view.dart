import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prime_tect_test/app/data/styles.dart';
import 'package:prime_tect_test/app/modules/pdf_page/controllers/pdf_page_controller.dart';

class ContactsView extends GetView<PdfPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() {
        return controller.contacts.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.contacts.length,
                      padding: const EdgeInsets.symmetric(
                          horizontal: horizontalMargin),
                      itemBuilder: (context, index) {
                        final element = controller.contacts[index];
                        return InkWell(
                          onTap: () {
                            Get.back(result: element);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey[100]
                            ),
                            child: Column(
                              children: [
                                Text(
                                  element.displayName ?? "",
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                element.phones != null
                                    ? element.phones!.isNotEmpty
                                        ? Text(
                                            element.phones![0].value ?? "",
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        : const SizedBox()
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                    ),
                  ],
                ),
              );
      }),
    );
  }
}

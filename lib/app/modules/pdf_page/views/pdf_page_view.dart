import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prime_tect_test/app/modules/pdf_page/views/contacts_view.dart';
import 'package:prime_tect_test/app/routes/app_pages.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../controllers/pdf_page_controller.dart';

class PdfPageView extends GetView<PdfPageController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: Text('PdfPageView'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.dialog(AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () async {
                      Get.back();

                      Get.to(() => ContactsView());
                    },
                    child: const Text("contacts"),
                  ),
                  const Text("imo"),
                  const Text("whatsapp"),
                ],
              ),
            ));
          },
          child: Icon(Icons.share),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              if (controller.pdfModel.value != null) ...[
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: SfPdfViewer.asset(
                    controller.pdfModel.value!.path,
                  ),
                ),
              ]
            ],
          ),
        ),
      );
    });
  }
}

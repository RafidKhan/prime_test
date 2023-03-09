import 'dart:developer';

import 'package:contacts_service/contacts_service.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:prime_tect_test/app/models/pdf_model.dart';

class PdfPageController extends GetxController {
  Rxn<PdfModel> pdfModel = Rxn<PdfModel>();
  RxList<Contact> contacts = <Contact>[].obs;

  @override
  void onReady() {
    pdfModel.value = Get.arguments;
    getContacts();
    super.onReady();
  }

  Future getContacts() async {
    print("GETTING DATA");
    try {
      if (await Permission.contacts.request().isGranted) {
        contacts.value = await ContactsService.getContacts();
        contacts.forEach((element) {
          log("DATA: ${element.toMap()}");
        });
      }
    } catch (e) {
      throw e;
    }
  }
}

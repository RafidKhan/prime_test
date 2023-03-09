import 'package:get/get.dart';
import 'package:prime_tect_test/app/models/pdf_model.dart';

class FormsController extends GetxController {
  final List<PdfModel> listPdf = [
    const PdfModel(
      name: "RTGS APPLICATION FORM",
      path: "assets/pdf/RTGS-APPLICATION-FORM.pdf",
    ),
    const PdfModel(
      name: "BEFTN APPLICATION FORM",
      path: "assets/pdf/BEFTN-APPLICATION-FORM.pdf",
    ),
    const PdfModel(
      name: "Positive Pay Instruction Form",
      path: "assets/pdf/Positive-Pay-Instruction-Form.pdf",
    ),
  ];
}

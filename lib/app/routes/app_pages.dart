import 'package:get/get.dart';
import '../modules/forms/bindings/forms_binding.dart';
import '../modules/forms/views/forms_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/pdf_page/bindings/pdf_page_binding.dart';
import '../modules/pdf_page/views/pdf_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FORMS,
      page: () => FormsView(),
      binding: FormsBinding(),
    ),
    GetPage(
      name: _Paths.PDF_PAGE,
      page: () => PdfPageView(),
      binding: PdfPageBinding(),
    ),
  ];
}

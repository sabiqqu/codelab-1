import 'package:get/get.dart';
import 'home_binding.dart';
import 'home_view.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
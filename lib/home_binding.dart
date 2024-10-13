import 'package:get/get.dart';
import 'home_controller.dart';
import 'news_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewsService());
    Get.lazyPut(() => HomeController(newsService: Get.find<NewsService>()));
  }
}
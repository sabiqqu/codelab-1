import 'package:get/get.dart';
import 'news_models.dart';
import 'news_service.dart';

class HomeController extends GetxController {
  final NewsService newsService;
  var articles = <Article>[].obs;
  var isLoading = true.obs;

  HomeController({required this.newsService});

  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }

  void fetchNews() async {
    try {
      isLoading(true);
      NewsModel newsModel = await newsService.getNews();
      articles.assignAll(newsModel.articles);
    } catch (e) {
      print('Error fetching news: $e');
    } finally {
      isLoading(false);
    }
  }
}
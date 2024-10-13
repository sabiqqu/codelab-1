import 'package:http/http.dart' as http;

import 'news_models.dart';

class NewsService {
  final String apiKey = '5562f968670a4f178c896fad260e0112'; // Replace with your actual NewsAPI key
  final String baseUrl = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=';

  Future<NewsModel> getNews() async {
    final response = await http.get(Uri.parse('$baseUrl$apiKey'));

    if (response.statusCode == 200) {
      return newsModelFromJson(response.body);
    } else {
      throw Exception('Failed to load news');
    }
  }
}
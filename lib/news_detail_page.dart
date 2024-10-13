import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'news_models.dart';
import 'webview_page.dart';

class NewsDetailPage extends StatelessWidget {
  final Article article;

  const NewsDetailPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News Detail')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (article.urlToImage != null)
              Image.network(article.urlToImage!, height: 200, width: double.infinity, fit: BoxFit.cover),
            const SizedBox(height: 16),
            Text(article.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(article.description ?? 'No description'),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Read Full Article'),
              onPressed: () => Get.to(() => WebViewPage(url: article.url)),
            ),
          ],
        ),
      ),
    );
  }
}
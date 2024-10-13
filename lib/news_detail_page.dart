import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'news_models.dart';
import 'webview_page.dart';

class NewsDetailPage extends StatelessWidget {
  final Article article;

  NewsDetailPage({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News Detail')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (article.urlToImage != null)
              Image.network(article.urlToImage!, height: 200, width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(article.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(article.description ?? 'No description'),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Read Full Article'),
              onPressed: () => Get.to(() => WebViewPage(url: article.url)),
            ),
          ],
        ),
      ),
    );
  }
}
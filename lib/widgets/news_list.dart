import 'package:flutter/material.dart';
import 'news_card.dart';

class NewsList extends StatelessWidget {
  final List<Map<String, String>> news;

  NewsList({required this.news});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: news.map((item) {
        return NewsCard(
          title: item['title']!,
          imageUrl: item['image']!,
        );
      }).toList(),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/category_list.dart';
import '../widgets/news_list.dart';

class NewsPage extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {
      'title': 'Business',
      'image': 'assets/images/business.avif',
    },
    {
      'title': 'Entertainment',
      'image': 'assets/images/entertaiment.avif',
    },
    {
      'title': 'General',
      'image': 'assets/images/general.avif',
    },
    {
      'title': 'Health',
      'image': 'assets/images/health.avif',
    },
    {
      'title': 'Science',
      'image': 'assets/images/science.avif',
    },
    {
      'title': 'Sports',
      'image': 'assets/images/sports.avif',
    },
    {
      'title': 'Technology',
      'image': 'assets/images/technology.jpeg',
    },
  ];


  final List<Map<String, String>> news = [
    {
      'title': ' مرتضى منصور: فيريرا اعتذر عن تدريب الزمالك عشان زهق منهم',
      'image': 'assets/images/فيريرا.jpg',
    },
    {
      'title': 'الفيشاوي يصرح انه داخل فيلم جديد ملوش لازمه 😂',
      'image': 'assets/images/الفيشاوي.jpg',
    },
    {
      'title': 'عمرو دياب صرح انه هيعمل حفله يغني فيها كل اغانيه القديمه بس وهتبقي قريب',
      'image': 'assets/images/عمرو دياب.png',
    },
    {
      'title': 'شيرين رجعت لحسام حبيب تاني 🥱',
      'image': 'assets/images/شيرين.webp',
    },
    {
      'title': 'يلا بينااا 😂',
      'image': 'assets/images/باسم سمره.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'News',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Cloud',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                  ],
                ),
               )
              ),
            ),
            CategoryList(categories: categories),
            NewsList(news: news),
            ],
        ),
      ),
    );
  }
}

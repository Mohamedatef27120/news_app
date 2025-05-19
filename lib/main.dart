import 'package:flutter/material.dart';
import 'pages/news_page.dart';
import 'package:dio/dio.dart';

void main() {
  getGeneralNews();
  runApp(MyApp());
}
final dio = Dio();

void getGeneralNews() async {
  final response = await dio.get(
      'https://newsapi.org/v2/everything?q=apple&from=2025-05-18&to=2025-05-18&sortBy=popularity&apiKey=7f76e182147c4a42818d88a07350bd11');
  print(response);
}
void getSportsNews() async {
  final response = await dio.get(
      'https://newsapi.org/v2/everything?q=apple&from=2025-05-18&to=2025-05-18&sortBy=popularity&apiKey=7f76e182147c4a42818d88a07350bd11');
  print(response);
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsPage(),
    );
  }
}

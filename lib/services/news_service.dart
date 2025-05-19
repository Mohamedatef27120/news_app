import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  void getGeneralNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/everything?q=apple&from=2025-05-18&to=2025-05-18&sortBy=popularity&apiKey=7f76e182147c4a42818d88a07350bd11',
    );
    print(response);
  }

  void getSportsNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/everything?q=sports&from=2025-05-18&to=2025-05-18&sortBy=popularity&apiKey=7f76e182147c4a42818d88a07350bd11',
    );
    print(response);
  }
}
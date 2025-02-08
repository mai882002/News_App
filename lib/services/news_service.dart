import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServies {
  final Dio dio;

  NewsServies({required this.dio});

  Future<List<ArticleModel>> getNews() async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=848183cf99444b5e8a81c2fd078ec664&category=general');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
        link: article['url'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}

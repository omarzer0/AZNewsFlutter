import 'package:flutter_news_app/data/article.dart';

class Response {
  String status;
  int totalResults;
  List<Article> articles;

  Response(this.status, this.totalResults, this.articles);

  factory Response.fromJson(Map<String, dynamic> json) {
    String status = json['status'];
    int totalResults = json['totalResults'];

    var jsonArticleList = json['articles'] as List;
    List<Article> articles = jsonArticleList
        .map((jsonArticle) => Article.fromJson(jsonArticle))
        .toList();

    return Response(status, totalResults, articles);
  }
}

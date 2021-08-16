import 'package:flutter_news_app/data/source.dart';

class Article {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article(this.source,this.author, this.title, this.description, this.url, this.urlToImage,
      this.publishedAt, this.content);

  factory Article.fromJson(dynamic json) {
    Source source = Source.fromJson(json['source']);
    String author = json['author']??'';
    String title = json['title']??'';
    String description = json['description']??'';
    String url = json['url']??'';
    String urlToImage = json['urlToImage']??'';

    if(urlToImage == null || urlToImage == ''){
      urlToImage = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCmuKon8fBArTQfhMXgD1k4WZpGbrp8Zg11UKzbDreDNX4vyKFRrbGAtEM8H04eg8hY5U&usqp=CAU';
    }
    String publishedAt = json['publishedAt']??'';

    String content = json['content']??'';
    return Article(
        source,author, title, description, url, urlToImage, publishedAt, content);
  }
}

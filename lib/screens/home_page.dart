import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_news_app/data/result.dart';
import 'package:flutter_news_app/dummy.dart';
import 'package:flutter_news_app/screens/webview_page.dart';
import 'package:flutter_news_app/services/network.dart';
import 'package:flutter_news_app/widgets/news_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Response response;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var json = await NetworkHelper().getData();
    setState(() {
      response = Response.fromJson(json);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (response == null) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('AZ News'),
        ),
        body: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  print('$index');
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WebViewPage(url: response.articles[index].url);
                  }));
                },
                title: NewsCard(
                  imgUrl: response.articles[index].urlToImage,
                  publisher: response.articles[index].source.name,
                  date: response.articles[index].publishedAt,
                  headline: response.articles[index].title,
                  author: response.articles[index].author,
                  time: response.articles[index].publishedAt,
                ),
              );
            },
            itemCount: response.articles.length,
          ),
        ),
      );
    }
  }
}

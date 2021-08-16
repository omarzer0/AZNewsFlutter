import 'dart:convert';

import 'package:flutter_news_app/dummy.dart';
import 'package:flutter_news_app/utils/utils.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper();

  Future getData() async {
    http.Response response = await http.get(Uri.parse(kTopHeadLinesUrl));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }

}

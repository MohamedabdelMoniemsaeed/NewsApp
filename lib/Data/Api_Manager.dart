import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newap/model/articles/ArticlesResponeDM.dart';

import 'package:newap/model/sources/SourcesResponse.dart';

abstract class ApiManager {
  static const baseUrl = 'newsapi.org';
  static const apiKey = "6a9e3eeab0004c6185115bb1c0bf1a66";
  static const apiKey1 = "e76071d0b41e4e499085cd2fa1a2e3b4";

  static Future<SourcesResponseDM> getSources() async {
    Uri url =
        Uri.https(baseUrl, 'v2/top-headlines/sources', {"apiKey": apiKey1});
    http.Response response = await http.get(url);

    Map json = jsonDecode(response.body) as Map;
    SourcesResponseDM sourcesResponse = SourcesResponseDM.fromJson(json);
    // if (sourcesResponse.message != null) {
    //   throw Exception(sourcesResponse.message);
    // }
    return sourcesResponse;
  }

  static Future<ArticlesResponeDm> getAricles(String sourceId) async {
    Uri url = Uri.https(
        baseUrl, 'v2/everything', {"apiKey": apiKey, "sources": sourceId});
    http.Response response = await http.get(url);

    Map json = jsonDecode(response.body) as Map;
    ArticlesResponeDm articlesResponeDm =
        ArticlesResponeDm.fromJson(jsonDecode(response.body));
    // if (articlesResponeDm.code != null) {
    //   throw Exception(articlesResponeDm.code);
    // }
    return articlesResponeDm;
  }
}

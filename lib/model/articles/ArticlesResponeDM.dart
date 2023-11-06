
import 'package:newap/model/sources/SourcesResponse.dart';

class ArticlesResponeDm {
  ArticlesResponeDm({
      this.status, 
      this.totalResults, 
      this.articles,
      this.code,
      this.message
      });

  ArticlesResponeDm.fromJson(dynamic json) {
    status = json['status'];
    totalResults = json['totalResults'];
    message = json['message'];
    code = json['code'];
    if (json['articles'] != null) {
      articles = [];
      json['articles'].forEach((v) {
        articles?.add(ArticlesDM.fromJson(v));
      });
    }
  }
  String? status;
  int? totalResults;
  List<ArticlesDM>? articles;
  String? message;
  String? code;
  

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['totalResults'] = totalResults;
     map['code'] = code;
    map['message'] = message;
    if (articles != null) {
      map['articles'] = articles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// source : {"id":"wired","name":"Wired"}
/// author : "Gideon Lichfield, Lauren Goode"
/// title : "Where Does Crypto Go From Here?"
/// description : "We talk with Michael Casey, the chief content officer of CoinDesk, almost one year after the news site brought down Sam Bankman-Fried’s cryptocurrency empire FTX."
/// url : "https://www.wired.com/story/have-a-nice-future-podcast-24/"
/// urlToImage : "https://media.wired.com/photos/6525c8ac419624284be05210/191:100/w_1280,c_limit/HANF-Michael%20Casey.jpg"
/// publishedAt : "2023-10-11T11:00:00Z"
/// content : "Gideon Lichfield: You said just now that what Sam Bankman-Fried did was allegedly illegal. Is there a world in which it wasn't illegal?\r\nMichael Casey: I think we allI know. I'm trying to be a good j… [+2082 chars]"

class ArticlesDM {
  ArticlesDM({
      this.source, 
      this.author, 
      this.title, 
      this.description, 
      this.url, 
      this.urlToImage, 
      this.publishedAt, 
      this.content,});

  ArticlesDM.fromJson(dynamic json) {
    source = json['source'] != null ? SourcesDM.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
  SourcesDM? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (source != null) {
      map['source'] = source?.toJson();
    }
    map['author'] = author;     
    map['title'] = title;
    map['description'] = description;
    map['url'] = url;
    map['urlToImage'] = urlToImage;
    map['publishedAt'] = publishedAt;
    map['content'] = content;
    return map;
  }

}

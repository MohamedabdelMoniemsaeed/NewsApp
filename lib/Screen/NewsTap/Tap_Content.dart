import 'package:flutter/material.dart';
import 'package:newap/Data/Api_Manager.dart';
import 'package:newap/model/articles/ArticlesResponeDM.dart';
import 'package:newap/model/sources/SourcesResponse.dart';

class getTabContent extends StatelessWidget {
  SourcesDM sourcesDM;

  getTabContent(this.sourcesDM);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ArticlesResponeDm>(
        future: ApiManager.getAricles(sourcesDM.id ?? ""),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.articles!.length,
                itemBuilder: (context, index) {
                  return buildNewsWidget(
                      context, snapshot.data!.articles![index]);
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }

  Widget buildNewsWidget(BuildContext context, ArticlesDM articles) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.center ,
            children: [
              CircularProgressIndicator(),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                    height: MediaQuery.of(context).size.height * 0.25,
                    fit: BoxFit.fill,
                    articles.urlToImage ??
                        "https://www.quantumbalancing.com/images/News2.gif"),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            articles.author ?? "",
            style: TextStyle(color: Colors.green),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 5),
          Text(
            articles.title ?? "",
            style: TextStyle(
              fontSize: 19,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 5),
          Text(
            articles.publishedAt ?? "",
            textAlign: TextAlign.end,
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

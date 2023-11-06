import 'package:flutter/material.dart';
import 'package:newap/Data/Api_Manager.dart';
import 'package:newap/Screen/NewsTap/Tap_Content.dart';

import '../../model/sources/SourcesResponse.dart';

class HomeTap extends StatefulWidget {
  @override
  State<HomeTap> createState() => _HomeTapState();
}

class _HomeTapState extends State<HomeTap> {
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManager.getSources(),
        builder: (context, snapShot) {
          if (snapShot.hasError) {
            return Text(snapShot.error.toString());
          } else if (snapShot.hasData) {
            return getScreenBody(snapShot.data!.sources!);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }

  Widget getScreenBody(List<SourcesDM> sources) {
    return DefaultTabController(
      length: sources.length,
      child: Column(
        children: [
          SizedBox(height: 12),
          TabBar(
            tabs: sources.map((source) {
              return getTab(source, currentTabIndex == sources.indexOf(source));
            }).toList(),
            onTap: (index) {
              currentTabIndex = index;
              setState(() {});
            },
            isScrollable: true,
            indicatorColor: Colors.transparent,
          ),
          Expanded(
              child: TabBarView(
            children: sources.map((source) {
              return getTabContent(source);
            }).toList(),
          )),
        ],
      ),
    );
  }

  Widget getTab(SourcesDM sources, bool isSelected) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        color: isSelected ? Colors.green : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        sources.name ?? "null",
        style: isSelected
            ? TextStyle(color: Colors.white)
            : TextStyle(color: Colors.green),
      ),
    );
  }
}

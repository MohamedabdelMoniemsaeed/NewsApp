import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:newap/Screen/HomeScreen.dart';
import 'package:newap/model/sources/SourcesResponse.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // getSources();

    return MaterialApp(
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }

// get tap

// الخبر
  void getArticle() {}
}

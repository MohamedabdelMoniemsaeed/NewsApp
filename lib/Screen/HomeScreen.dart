import 'package:flutter/material.dart';
import 'package:newap/Screen/NewsTap/Tap_Home.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Sports"),
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ),
      body: HomeTap(),
    );
  }
}

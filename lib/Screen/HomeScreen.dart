import 'package:flutter/material.dart';
import 'package:newap/Screen/Categories/Tap_Categories.dart';
import 'package:newap/Screen/NewsTap/Tap_Home.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "HomeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: CategoriesTtab(),
      drawer: Drawer(
        child: buildDrawerWidget(),
      ),
    );
  }

  Widget buildDrawerWidget() {
    return Container(
      width: MediaQuery.of(context).size.width * .4,
      child: Column(children: [
        Container(
          color: Colors.green,
          height: MediaQuery.of(context).size.height * .2,
          child: Center(
            child: Text(
              "News App!",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        buildDrawerRow(Icons.menu, "Categories"),
        buildDrawerRow(Icons.settings, "Settings"),
      ]),
    );
  }

  Widget buildDrawerRow(IconData icon, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon, size: 30),
          SizedBox(width: 16),
          Text(
            name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

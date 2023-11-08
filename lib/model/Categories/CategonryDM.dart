import 'package:flutter/material.dart';

class CategonyBM {
  String id;
  String title;
  String imagePath;
  bool isLeftsided;
  Color backgroundColor;

  CategonyBM(
      {required this.id,
      required this.title,
      required this.imagePath,
      required this.isLeftsided,
      required this.backgroundColor});

  static List<CategonyBM> categories = [
    CategonyBM(
        id: "Sports",
        title: "Sports",
        imagePath: "assets/ball.png",
        isLeftsided: true,
        backgroundColor: Color(0xffC91C22)),
    CategonyBM(
        id: "Politics",
        title: "Politics",
        imagePath: "assets/Politics.png",
        isLeftsided: false,
        backgroundColor: Color(0xff003E90)),
    CategonyBM(
        id: "Health",
        title: "Health",
        imagePath: "assets/health.png",
        isLeftsided: true,
        backgroundColor: Color(0xffED1E79)),
    CategonyBM(
        id: "business",
        title: "business",
        imagePath: "assets/bussines.png",
        isLeftsided: false,
        backgroundColor: Color(0xffCF7E48)),
    CategonyBM(
        id: "Enviroment",
        title: "Enviroment",
        imagePath: "assets/environment.png",
        isLeftsided: true,
        backgroundColor: Color(0xff4882CF)),
    CategonyBM(
        id: "Science",
        title: "Science",
        imagePath: "assets/science.png",
        isLeftsided: false,
        backgroundColor: Color(0xffF2D352)),
  ];
}

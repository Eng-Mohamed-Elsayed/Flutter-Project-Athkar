import 'dart:collection';

import 'package:project_the_hope/model/model_prayer.dart';

class Controller {
  static final List<Model> _listCard = [
    Model(
        image: "assets/images/sbah.png",
        url:
            "https://www.islambook.com/azkar/1/%D8%A3%D8%B0%D9%83%D8%A7%D8%B1-%D8%A7%D9%84%D8%B5%D8%A8%D8%A7%D8%AD"),
    Model(
        image: "assets/images/masa.png",
        url:
            "https://www.islambook.com/azkar/2/%D8%A3%D8%B0%D9%83%D8%A7%D8%B1-%D8%A7%D9%84%D9%85%D8%B3%D8%A7%D8%A1"),
    Model(
        image: "assets/images/5atm.png",
        url:
            "https://www.islambook.com/azkar/16/%D8%AF%D8%B9%D8%A7%D8%A1-%D8%AE%D8%AA%D9%85-%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86-%D8%A7%D9%84%D9%83%D8%B1%D9%8A%D9%85"),
    Model(
        image: "assets/images/5laa.png",
        url:
            "https://www.islambook.com/azkar/7/%D8%A3%D8%B0%D9%83%D8%A7%D8%B1-%D8%AF%D8%AE%D9%88%D9%84-%D9%88%D8%AE%D8%B1%D9%88%D8%AC-%D8%A7%D9%84%D8%AE%D9%84%D8%A7%D8%A1"),
    Model(
        image: "assets/images/adan.png",
        url:
            "https://www.islambook.com/azkar/5/%D8%A3%D8%B0%D9%83%D8%A7%D8%B1-%D8%B9%D9%86%D8%AF-%D8%B3%D9%85%D8%A7%D8%B9-%D8%A7%D9%84%D8%A2%D8%B0%D8%A7%D9%86"),
    Model(
        image: "assets/images/almaet.png",
        url:
            "https://www.islambook.com/azkar/27/%D8%A3%D8%AF%D8%B9%D9%8A%D8%A9-%D9%84%D9%84%D9%85%D9%8A%D8%AA"),
    Model(
        image: "assets/images/anbea.png",
        url:
            "https://www.islambook.com/azkar/28/%D8%A3%D8%AF%D8%B9%D9%8A%D8%A9-%D8%A7%D9%84%D8%A3%D9%86%D8%A8%D9%8A%D8%A7%D8%A1-%D9%85%D9%86-%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86-%D8%A7%D9%84%D9%83%D8%B1%D9%8A%D9%85"),
    Model(
        image: "assets/images/astaeqad.png",
        url:
            "https://www.islambook.com/azkar/12/%D8%A3%D8%B0%D9%83%D8%A7%D8%B1-%D8%A7%D9%84%D8%A5%D8%B3%D8%AA%D9%8A%D9%82%D8%A7%D8%B8-%D9%85%D9%86-%D8%A7%D9%84%D9%86%D9%88%D9%85"),
    Model(
        image: "assets/images/food.png",
        url:
            "https://www.islambook.com/azkar/13/%D8%A3%D8%B0%D9%83%D8%A7%D8%B1-%D8%A7%D9%84%D8%B7%D8%B9%D8%A7%D9%85-%D9%88%D8%A7%D9%84%D8%B4%D8%B1%D8%A7%D8%A8-%D9%88%D8%A7%D9%84%D8%B6%D9%8A%D9%81"),
    Model(
        image: "assets/images/haj.png",
        url:
            "https://www.islambook.com/azkar/17/%D8%A3%D8%B0%D9%83%D8%A7%D8%B1-%D8%A7%D9%84%D8%AD%D8%AC-%D9%88%D8%A7%D9%84%D8%B9%D9%85%D8%B1%D8%A9"),
    Model(
        image: "assets/images/nabaweh.png",
        url:
            "https://www.islambook.com/azkar/21/%D8%A3%D8%AF%D8%B9%D9%8A%D8%A9-%D8%A7%D9%84%D9%86%D8%A8%D9%8A-%D8%B5%D9%84%D9%89-%D8%A7%D9%84%D9%84%D9%87-%D8%B9%D9%84%D9%8A%D9%87-%D9%88%D8%B3%D9%84%D9%85"),
    Model(
        image: "assets/images/nom.png",
        url:
            "https://www.islambook.com/azkar/11/%D8%A3%D8%B0%D9%83%D8%A7%D8%B1-%D8%A7%D9%84%D9%86%D9%88%D9%85-%D9%88%D8%A7%D9%84%D8%A3%D8%AD%D9%84%D8%A7%D9%85"),
    Model(
        image: "assets/images/odo.png",
        url:
            "https://www.islambook.com/azkar/10/%D8%A3%D8%B0%D9%83%D8%A7%D8%B1-%D8%A7%D9%84%D9%88%D8%B6%D9%88%D8%A1"),
    Model(
        image: "assets/images/qraan.png",
        url:
            "https://www.islambook.com/azkar/15/%D8%A7%D9%84%D8%A3%D8%AF%D8%B9%D9%8A%D8%A9-%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86%D9%8A%D8%A9"),
    Model(
        image: "assets/images/salah.png",
        url:
            "https://www.islambook.com/azkar/9/%D8%A3%D8%B0%D9%83%D8%A7%D8%B1-%D8%A8%D8%B9%D8%AF-%D8%A7%D9%84%D8%B3%D9%84%D8%A7%D9%85-%D9%85%D9%86-%D8%A7%D9%84%D8%B5%D9%84%D8%A7%D8%A9-%D8%A7%D9%84%D9%85%D9%81%D8%B1%D9%88%D8%B6%D8%A9"),
    Model(
        image: "assets/images/tsabe7.png",
        url:
            "https://www.islambook.com/azkar/3/%D8%AA%D8%B3%D8%A7%D8%A8%D9%8A%D8%AD-%D8%AA%D8%B3%D8%A8%D9%8A%D8%AD-%D8%A7%D9%84%D8%B3%D8%A8%D8%AD%D8%A9-%D8%A3%D8%B0%D9%83%D8%A7%D8%B1-%D8%B9%D8%B8%D9%8A%D9%85%D8%A9"),
  ];

  static UnmodifiableListView<Model> get dataList =>
      UnmodifiableListView(_listCard);
  static int get dataLength => dataList.length;
  static Model getModel(int i) => _listCard.elementAt(i);
}

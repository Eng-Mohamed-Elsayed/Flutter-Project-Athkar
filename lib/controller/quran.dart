import 'dart:collection';

import '../model/model_quran.dart';

mixin Quran_Controller {
  static final List<Modelquran> _listCard = [
    Modelquran(
        image: "assets/images/AlQuran.png",
        url: "https://www.islambook.com/QuranReader"),
    Modelquran(
        image: "assets/images/youtube.png",
        url:
            "https://www.youtube.com/watch?v=IypQwGHwZso&list=PLFR1La1JuKuw6fiYiUEYwkw2ttG6CYGs8"),
    Modelquran(
        image: "assets/images/qraan_audio.png",
        url:
            "https://www.islambook.com/audio/%D8%AA%D9%84%D8%A7%D9%88%D8%A9/%D8%AA%D9%84%D8%A7%D9%88%D8%A7%D8%AA_%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86_%D8%A7%D9%84%D9%83%D8%B1%D9%8A%D9%85"),
    Modelquran(
        image: "assets/images/hadeth.png",
        url:
            "https://www.islambook.com/hadith/%D8%A7%D9%84%D8%AD%D8%AF%D9%8A%D8%AB/%D8%A7%D9%84%D8%AD%D8%AF%D9%8A%D8%AB_%D8%A7%D9%84%D9%86%D8%A8%D9%88%D9%89_%D8%A7%D9%84%D8%B4%D8%B1%D9%8A%D9%81"),
    Modelquran(
        image: "assets/images/mawaqet.png",
        url:
            "https://www.islambook.com/prayertimes/%D9%85%D9%88%D8%A7%D9%82%D9%8A%D8%AA_%D8%A7%D9%84%D8%B5%D9%84%D8%A7%D8%A9/%D8%A7%D9%84%D8%B5%D9%84%D8%A7%D8%A9"),
  ];
  static UnmodifiableListView<Modelquran> get dataList =>
      UnmodifiableListView(_listCard);
  static int get dataLength => dataList.length;
  static Modelquran getModel(int i) => _listCard.elementAt(i);
}

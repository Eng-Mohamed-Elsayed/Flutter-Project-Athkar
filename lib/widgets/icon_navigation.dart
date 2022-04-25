import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class IconNavigation extends StatelessWidget {
  const IconNavigation({Key? key, this.index = 0, required this.indexPage})
      : super(key: key);
  final int index, indexPage;
  @override
  Widget build(BuildContext context) {
    return Icon(_checkIcon, color: _checkColor);
  }

  //  * check color

  Color get _checkColor => index == indexPage ? Colors.white : Colors.grey;

  // * check icon
  IconData get _checkIcon {
    IconData prayer;
    IconData quran;
    if (Platform.isAndroid) {
      prayer = Icons.article;
      quran = Icons.menu_book_sharp;
    } else {
      prayer = CupertinoIcons.news_solid;
      quran = CupertinoIcons.tv;
    }

    return index == 0 ? prayer : quran;
  }
}

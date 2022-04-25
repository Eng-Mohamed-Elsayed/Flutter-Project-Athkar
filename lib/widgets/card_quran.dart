import 'package:flutter/material.dart';
import 'package:project_the_hope/model/model_quran.dart';

import '../model/content.dart';
import '../screen/app_webview.dart';

class CardQuran extends StatelessWidget {
  const CardQuran({Key? key, required this.data}) : super(key: key);
  final Modelquran data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: InkWell(
        onTap: () {
          ModelWeb dataweb = ModelWeb(url: data.url, title: "");
          var route = MaterialPageRoute(
              builder: (context) => AppWebView(data: dataweb));
          Navigator.push(context, route);
        },
        child: Card(
          elevation: 30,
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              // * image
              Expanded(
                  child: Image(
                      fit: BoxFit.fitWidth, image: AssetImage(data.image))),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_the_hope/model/content.dart';
import 'package:project_the_hope/model/model_prayer.dart';
import 'package:project_the_hope/screen/app_webview.dart';

class CardHome extends StatelessWidget {
  const CardHome({Key? key, required this.data}) : super(key: key);
  final Model data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: InkWell(
        onTap: () {
          ModelWeb dataweb = ModelWeb(url: data.url, title: "");
          var route = MaterialPageRoute(
              builder: (context) => AppWebView(data: dataweb));
          Navigator.push(context, route);
        },
        child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              // * image
              Expanded(
                  child: Image(
                      width: 300,
                      fit: BoxFit.fitWidth,
                      image: AssetImage(data.image))),
            ],
          ),
        ),
      ),
    );
  }

  void onClick(BuildContext context) {
    // Create object
    // Model dataWeb = Model( url: data.url, image: '');
    // var route = MaterialPageRoute(
    //   builder: (context) => AppWebView(data: dataWeb),
    // );
    // Navigator.push( route);
  }
}

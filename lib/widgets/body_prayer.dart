import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_the_hope/controller/controller.dart';
import 'package:project_the_hope/widgets/card_home.dart';

class BodyPrayerList extends StatelessWidget {
  const BodyPrayerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Controller.dataLength,
        itemBuilder:(context, index) {
      return CardHome(data: Controller.getModel(index),);
    }
    );

  }
}

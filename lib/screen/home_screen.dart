import 'package:flutter/material.dart';
import 'package:project_the_hope/widgets/appbar_home.dart';
import 'package:project_the_hope/widgets/body_prayer.dart';
import 'package:project_the_hope/widgets/bodyquran_list.dart';

import '../widgets/custom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexpage = 0;
  List<Widget> pages = const [BodyPrayerList(), BodyQuran()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppbarHome(),
        body: pages[indexpage],
        bottomNavigationBar: CustomNavigation(
          indexPage: indexpage,
          callBack: _updateContent,
        ));
  }

  void _updateContent(int index) {
    setState(() {
      indexpage = index;
    });
  }
}

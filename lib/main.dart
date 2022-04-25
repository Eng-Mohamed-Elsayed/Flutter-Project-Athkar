import 'package:flutter/material.dart';
import 'package:project_the_hope/screen/home_screen.dart';
import 'package:project_the_hope/screen/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'athkar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const StartScreen(),
      routes: {
        "home": (context) => const HomeScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_the_hope/widgets/button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80, left: 5, right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(),
              Image(
                image: AssetImage("assets/images/athkar3.png"),
              ),
              Text(
                "ملاحظة التطبيق يحتاج اتصال ب الانترنت",
                style: TextStyle(color: Colors.white),
              ),
              Button(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io' show Platform;

class AppbarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppbarHome({Key? key, this.title = 'أذكار'}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.pacifico(),
      ),
      centerTitle: true,
      backgroundColor: Platform.isAndroid ? Colors.black : Colors.grey,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

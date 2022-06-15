import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final String text;
  final Color backgroundColor;
  final Color fontColor;
  final double fontSize;
  const CustomAppBar({
    Key? key,
    required this.appBar,
    required this.text,
    required this.backgroundColor,
    required this.fontColor,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(55),
      child: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(
          text,
          style: GoogleFonts.quicksand(
            color: fontColor,
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ),
        centerTitle: true,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
